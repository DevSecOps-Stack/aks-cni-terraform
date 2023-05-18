terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.32.0"
    }
     random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  
  subscription_id = "1cfd9c12-2c35-4462-a5f4-75403af97042"
  client_id       = "be9fa68e-2f87-4719-9861-4c13ebfb6b93"
  client_secret   = var.client_secret
  tenant_id       = "4c6f1364-8db1-4e57-95ef-b3cf7dd7d4c9"
}
