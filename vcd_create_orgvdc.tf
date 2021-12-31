terraform {
  required_providers {
    vcd = {
      source = "registry.terraform.io/vmware/vcd"
      version = "3.4"
    }
  }
}
  
provider "vcd" {
  user     = var.system_admin
  password = var.system_admin_password
  org      = "system"
  url      = var.organization_api_url
}

resource "vcd_org_vdc" "AlOvDC" {
  name        = var.ovdc_name
  description = var.ovdc_description
  org         = var.organization_name

  allocation_model  = var.ovdc_allocation_model
  network_pool_name = var.ovdc_network_pool
  provider_vdc_name = var.ovdc_source_pvdc

  compute_capacity {
    cpu {
      allocated = var.ovdc_cpu_capacity
    }

    memory {
      allocated = var.ovdc_memory_capacity
    }
  }

  storage_profile {
    name    = var.ovdc_storage_profile_assignment
    limit   = var.ovdc_storage_profile_limit
    default = true
  }

  network_quota = var.ovdc_organization_networks_quota

  metadata = {
    role    = var.organization_name
    env     = var.environment_location
  }

  enabled                  = var.ovdc_state
  enable_thin_provisioning = var.ovdc_thin_provisioning
  enable_fast_provisioning = var.ovdc_fast_provisioning
  delete_force             = var.ovdc_force_delete
  delete_recursive         = var.ovdc_recursive_delete
}

resource "vcd_edgegateway" "AlEdgeGateway" {
  org = var.organization_name
  vdc = var.ovdc_name

  name          = "${var.organization_name}_EdgeGateway"
  description   = "${var.organization_name} Edge Gateway"
  configuration = var.ovdc_edge_gateway_size
  ha_enabled    = var.ovdc_edge_gateway_ha
  distributed_routing = var.ovdc_edge_enable_distributed_routing

  external_network {
    name = var.ovdc_edge_external_network_name

    subnet {
      gateway               = var.ovdc_edge_external_network_gateway
      netmask               = var.ovdc_edge_external_network_netmask
      use_for_default_route = var.ovdc_edge_external_network_default_route
    }
  }
  depends_on = [
    vcd_org_vdc.AlOvDC,
  ]
}

resource "vcd_network_routed" "AlOvDCNetwork01" {
  org         = var.organization_name
  vdc         = var.ovdc_name
  name        = var.ovdc_network_01_name
  description = var.ovdc_network_01_description

  edge_gateway = "${var.organization_name}_EdgeGateway"

  interface_type = var.ovdc_network_01_type

  gateway = var.ovdc_network_01_gateway
  netmask = var.ovdc_network_01_netmask

  static_ip_pool {
    start_address = var.ovdc_network_01_start_address
    end_address   = var.ovdc_network_01_end_address
  }
    depends_on = [
    vcd_edgegateway.AlEdgeGateway,
  ]
}

resource "vcd_network_routed" "AlOvDCNetwork02" {
  org         = var.organization_name
  vdc         = var.ovdc_name
  name        = var.ovdc_network_02_name
  description = var.ovdc_network_02_description

  edge_gateway = "${var.organization_name}_EdgeGateway"

  interface_type = var.ovdc_network_02_type

  gateway = var.ovdc_network_02_gateway
  netmask = var.ovdc_network_02_netmask

  static_ip_pool {
    start_address = var.ovdc_network_02_start_address
    end_address   = var.ovdc_network_02_end_address
  }
    depends_on = [
    vcd_edgegateway.AlEdgeGateway,
  ]
}

resource "vcd_vm" "AlOrgVM01" {
  org         = var.organization_name
  vdc         = var.ovdc_name
  name        = var.ovdc_vm_01_name

  catalog_name  = var.ovdc_vm_01_catalog_name
  template_name = var.ovdc_vm_01_template_name
  cpus          = var.ovdc_vm_01_cpu
  memory        = var.ovdc_vm_01_memory

  network {
    name               = var.ovdc_network_01_name
    type               = var.ovdc_vm_01_network_type
    ip_allocation_mode = var.ovdc_vm_01_ip_allocation_mode
  }
  depends_on = [
    vcd_org_vdc.AlOvDC,
    vcd_edgegateway.AlEdgeGateway,
    vcd_network_routed.AlOvDCNetwork01,
  ]
}

resource "vcd_vm" "AlOrgVM02" {
  org         = var.organization_name
  vdc         = var.ovdc_name
  name        = var.ovdc_vm_02_name

  catalog_name  = var.ovdc_vm_02_catalog_name
  template_name = var.ovdc_vm_02_template_name
  cpus          = var.ovdc_vm_02_cpu
  memory        = var.ovdc_vm_02_memory

  network {
    name               = var.ovdc_network_02_name
    type               = var.ovdc_vm_02_network_type
    ip_allocation_mode = var.ovdc_vm_02_ip_allocation_mode
  }
  depends_on = [
    vcd_org_vdc.AlOvDC,
    vcd_edgegateway.AlEdgeGateway,
    vcd_network_routed.AlOvDCNetwork02,
  ]
}