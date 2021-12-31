variable "system_admin_username" {
  type = string
  description = "VCD System Administrator Account"
}

variable "system_admin_password" {
  type = string
  description = "VCD System Administrator Password"
  sensitive = true
}

variable "vcd_api_url" {
  type = string
  description = "Organization API URL"
}

variable "organization_name" {
  type = string
  description = "Organization Name"
}

variable "environment_location" {
  type = string
  description = "Production/Staging/DevTest"
}

variable "ovdc_name" {
    type = string
    description = "Organization VDC Name"
}


variable "ovdc_description" {
    type = string
    description = "Organization VDC Description"
}

variable "ovdc_allocation_model" {
    type = string
    description = "Organization VDC Allocation Model"
}

variable "ovdc_network_pool" {
    type = string
    description = "Organization VDC Network Pool Assignment"
}

variable "ovdc_source_pvdc" {
    type = string
    description = "Organization VDC Backing PvDC"
}

variable "ovdc_cpu_capacity" {
    type = number
    description = "CPU Capacity in GHz"
}

variable "ovdc_memory_capacity" {
    type = number
    description = "Memory Capacity in Megabytes"
}

variable "ovdc_storage_profile_assignment" {
    type = string
    description = "Storage Profile Name"
}

variable "ovdc_storage_profile_limit" {
    type = number
    description = "Storage Profile Limit in GB"
}

variable "ovdc_organization_networks_quota" {
    type = number
    description = "Organization Networks Quota"
}

variable "ovdc_state" {
    type = bool
    description = "Organization VDC Enabled/Disabled"
    default = true
}

variable "ovdc_thin_provisioning" {
    type = bool
    description = "Organization VDC Storage Provisioning Thin/Thick"
    default = true
}

variable "ovdc_fast_provisioning" {
    type = bool
    description = "Organization VDC Storage Provisioning Linked Clones"
    default = false
}

variable "ovdc_force_delete" {
    type = bool
    description = "Organization VDC Force Deletion"
    default = true
}

variable "ovdc_recursive_delete" {
    type = bool
    description = "Organization VDC Recursive sDeletion"
    default = true
}

variable "ovdc_edge_gateway_size" {
    type = string
    description = "Organization VDC Edge Gateway Size"
}

variable "ovdc_edge_gateway_ha" {
    type = bool
    description = "Organization VDC Edge Gateway HA"
    default = false
}

variable "ovdc_edge_enable_distributed_routing" {
    type = bool
    description = "Organization VDC Enable Distributed Routing"
    default = true
}

variable "ovdc_edge_external_network_name" {
    type = string
    description = "Organization VDC Edge External Network"
}

variable "ovdc_edge_external_network_gateway" {
    type = string
    description = "Organization VDC Edge Gateway Gateway"
}

variable "ovdc_edge_external_network_netmask" {
    type = string
    description = "Organization VDC Edge Gateway Gateway"
}

variable "ovdc_edge_external_network_default_route" {
    type = bool
    description = "Organization VDC Enable Distributed Routing"
    default = true
}

variable "ovdc_network_01_name" {
    type = string
    description = "Organization VDC Network 01 Name"
}

variable "ovdc_network_01_description" {
    type = string
    description = "Organization VDC Network 01 Description"
}

variable "ovdc_network_01_type" {
    type = string
    description = "Organization VDC Network 01 Type"
}

variable "ovdc_network_01_gateway" {
    type = string
    description = "Organization VDC Network 01 Gateway Address"
}

variable "ovdc_network_01_netmask" {
    type = string
    description = "Organization VDC Network 01 Netmask"
}

variable "ovdc_network_01_start_address" {
    type = string
    description = "Organization VDC Network 01 IP Pool Start Address"
}

variable "ovdc_network_01_end_address" {
    type = string
    description = "Organization VDC Network 01 IP Pool End Address"
}

variable "ovdc_network_02_name" {
    type = string
    description = "Organization VDC Network 02 Name"
}

variable "ovdc_network_02_description" {
    type = string
    description = "Organization VDC Network 02 Description"
}

variable "ovdc_network_02_type" {
    type = string
    description = "Organization VDC Network 02 Type"
}

variable "ovdc_network_02_gateway" {
    type = string
    description = "Organization VDC Network 02 Gateway Address"
}

variable "ovdc_network_02_netmask" {
    type = string
    description = "Organization VDC Network 02 Netmask"
}

variable "ovdc_network_02_start_address" {
    type = string
    description = "Organization VDC Network 02 IP Pool Start Address"
}

variable "ovdc_network_02_end_address" {
    type = string
    description = "Organization VDC Network 02 IP Pool End Address"
}

variable "ovdc_vm_01_catalog_name" {
    type = string
    description = "Catalog from where the template is retrieved"
}

variable "ovdc_vm_01_template_name" {
    type = string
    description = "Template name of create the VM from"
}
variable "ovdc_vm_01_name" {
    type = string
    description = "Organization VM 01 Name"
}

variable "ovdc_vm_01_cpu" {
    type = number
    description = "Organization VM 01 CPU"
}

variable "ovdc_vm_01_memory" {
    type = number
    description = "Organization VM 01 Memory"
}

variable "ovdc_vm_01_network_type" {
    type = string
    description = "Organization VM 01 Network Types"
}

variable "ovdc_vm_01_ip_allocation_mode" {
    type = string
    description = "Organization VM 01 IP Allocation Mode"
}

variable "ovdc_vm_02_catalog_name" {
    type = string
    description = "Catalog from where the template is retrieved"
}

variable "ovdc_vm_02_template_name" {
    type = string
    description = "Template name of create the VM from"
}
variable "ovdc_vm_02_name" {
    type = string
    description = "Organization VM 01 Name"
}

variable "ovdc_vm_02_cpu" {
    type = number
    description = "Organization VM 01 CPU"
}

variable "ovdc_vm_02_memory" {
    type = number
    description = "Organization VM 01 Memory"
}

variable "ovdc_vm_02_network_type" {
    type = string
    description = "Organization VM 01 Network Types"
}

variable "ovdc_vm_02_ip_allocation_mode" {
    type = string
    description = "Organization VM 01 IP Allocation Mode"
}
