rgmapmodule = {
  rg = "west europe"
}

vnetmapmodule = {
  vnet2 = {
    location            = "West Europe"
    resource_group_name = "rg"
    address_space       = ["10.0.0.0/16"]
  }
}

strmapmodule = {
  str2 = {
    location            = "West Europe"
    resource_group_name = "rg"
  }
}

strblobmapmodule = {
  strblob2 = {
    storage_account_name = "str2"
  }
}

strfilemapmodule = {
    strfile2 = {
        storage_account_name = "str2"
        quota = 50
    }
}
strqueuemapmodule = {
    strqueue2 = {
        storage_account_name = "str2"
    }
}
strtablemapmodule = {
  strtable2 = {
    storage_account_name = "str2"
  }
}
subnetmapmodule = {
  subnet2 = {
    resource_group_name = "rg"
    virtual_network_name = "vnet2"
    address_prefixes = ["10.0.1.0/24"]
  }
}
nicmapmodule = {
  nic2 = {
    location = "West Europe"
    resource_group_name = "rg"
    subnet_name = "subnet2"
    virtual_network_name = "vnet2"
  }
}

vmmapmodule = {
  vm2 = {
    resource_group_name = "rg"
    locatio = "West Europe"
    size = "Standard_B1s"
    admin_username = "azureuser"
    admin_password = "Password123!"
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "18.04-LTS"
    nicname = "nic2"
  }
}
pipmapmodule = {
  pip2 = {
    location = "West Europe"
    resource_group_name = "rg"
  }
}