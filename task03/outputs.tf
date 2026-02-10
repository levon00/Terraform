output "rg_id" {
  value       = azurerm_resource_group.rg.id
  description = "Resouce Gruop ID"
}

output "sa_blob_endpoint" {
  value       = azurerm_storage_account.sa.primary_blob_endpoint
  description = "Primary Blob Endpoint"
}

output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "Virtual network ID"
}