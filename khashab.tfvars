vcd_admin_username = "<VCD System Administrato Account>"
vcd_admin_password = "<VCD System Administrator Account Password>"
vcd_api_url = "https://<VCD URL>/api"
organization_name = "khashab"
environment_location = "DevTest"
ovdc_name = "Khashab_OvDC01"
ovdc_description = "Generic Workloads VDC"
ovdc_allocation_model = "AllocationVApp"
ovdc_network_pool = "NSXv-Pool"
ovdc_source_pvdc = "PvDC01"
ovdc_cpu_capacity = "0"
ovdc_memory_capacity = "0"
ovdc_storage_profile_assignment = "3iddeh Storage Policy"
ovdc_storage_profile_limit = "0"
ovdc_organization_networks_quota = "1000"
ovdc_state = true
ovdc_thin_provisioning = true
ovdc_fast_provisioning = false
ovdc_force_delete = true
ovdc_recursive_delete = true
ovdc_edge_gateway_size = "full"
ovdc_edge_gateway_ha = true
ovdc_edge_enable_distributed_routing = true
ovdc_edge_external_network_name = "NSXv-External-Network"
ovdc_edge_external_network_gateway = "13.37.1.254"
ovdc_edge_external_network_netmask = "255.255.255.0"
ovdc_edge_external_network_default_route = true
ovdc_network_01_name = "WebNetwork01"
ovdc_network_01_description = "Web Workloads Routed Network"
ovdc_network_01_type = "distributed"
ovdc_network_01_gateway = "193.193.1.254"
ovdc_network_01_netmask = "255.255.255.0"
ovdc_network_01_start_address = "193.193.1.1"
ovdc_network_01_end_address = "193.193.1.253"
ovdc_network_02_name = "AppNetwork01"
ovdc_network_02_description = "Application Workloads Routed Network"
ovdc_network_02_type = "distributed"
ovdc_network_02_gateway = "193.193.2.254"
ovdc_network_02_netmask = "255.255.255.0"
ovdc_network_02_start_address = "193.193.2.1"
ovdc_network_02_end_address = "193.193.2.253"
ovdc_vm_01_catalog_name = "kitchen"
ovdc_vm_01_template_name = "TestVM01"
ovdc_vm_01_name = "OrgVM01"
ovdc_vm_01_cpu = "2"
ovdc_vm_01_memory = "6144"
ovdc_vm_01_network_type = "org"
ovdc_vm_01_ip_allocation_mode = "POOL"
ovdc_vm_02_catalog_name = "kitchen"
ovdc_vm_02_template_name = "TestVM01"
ovdc_vm_02_name = "OrgVM02"
ovdc_vm_02_cpu = "2"
ovdc_vm_02_memory = "6144"
ovdc_vm_02_network_type = "org"
ovdc_vm_02_ip_allocation_mode = "POOL"
