rg_name         = "cmaz-0sj5vwga-mod3-rg"
sa_name         = "cmaz0sj5vwgasa"
Vnet_name       = "cmaz-0sj5vwga-mod3-vnet"
location        = "eastus"
Vnet_address    = ["10.0.0.0/16"]
tags            = { Creator = "levon_khalatyan@epam.com" }
subnet_names    = ["fronend", "backend"]
subnet_prefixes = ["10.0.1.0/24", "10.0.2.0/24"]