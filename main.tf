# Create Container Registry
resource "azurerm_container_registry" "tf-vm-tg" {
  name                = "${replace(var.resource_group_name, "-", "")}${replace(var.environment, "-", "")}${lower(replace(var.location, " ", ""))}acr${random_id.acr_suffix.dec}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

  tags = {
    environment = var.environment
  }
}

# Generate a random ID
resource "random_id" "acr_suffix" {
  byte_length = 2
}