data "azurerm_public_ip" "public_ip" {
  name                = var.pip_name
  resource_group_name = var.resource_group_name
}

data "azurerm_subnet" "data_subnet" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}

resource "azurerm_network_interface" "vm_nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name


  ip_configuration {
    public_ip_address_id          = data.azurerm_public_ip.public_ip.id # yeh public ip ka id hai jo upr banega ; fer implicit dependeny lgai
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.data_subnet.id # yeh subnet ka id hai jo upr banega ; fer implicit dependeny lgai
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "virtual_machine" {
  name                            = var.vm_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.vm_nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

custom_data = base64encode(<<EOF
#!/bin/bash
sudo apt update -y
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
EOF
)
}


