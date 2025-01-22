output "acr_login_server" {
  value     = azurerm_container_registry.tf-vm-tg.login_server
  sensitive = false
}

output "acr_admin_username" {
  value     = azurerm_container_registry.tf-vm-tg.admin_username
  sensitive = false
}

output "acr_admin_password" {
  value     = azurerm_container_registry.tf-vm-tg.admin_password
  sensitive = true
}