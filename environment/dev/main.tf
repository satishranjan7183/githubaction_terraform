module "rgmodule" {
  source = "../../module/rg_1"
  rgmap  = var.rgmapmodule
}
module "vnetmodule" {
  source     = "../../module/vnet_2"
  vnetmap    = var.vnetmapmodule
  depends_on = [module.rgmodule]
}
module "strmodule" {
  source     = "../../module/storage_account_2"
  strmap     = var.strmapmodule
  depends_on = [module.rgmodule]
}
module "strblobmodule" {
  source     = "../../module/str2_blob_storage_3"
  strblobmap = var.strblobmapmodule
  depends_on = [var.strmapmodule]
}

module "strfilemodule" {
    source = "../../module/str2_Azurefile_storage_3"
    strfilemap = var.strfilemapmodule
    depends_on = [ var.strmapmodule ]
}
module "strqueuemodule" {
    source = "../../module/str2_queue_3"
    strqueuemap = var.strqueuemapmodule
    depends_on = [var.strmapmodule]
}

module "strtablemodule" {
  source = "../../module/str2_table_3"
  strtablemap = var.strtablemapmodule
  depends_on = [ var.strmapmodule ]
}
module "vnetsubnetmodule" {
  source = "../../module/vnetsubnet_3"
  subnetmap = var.subnetmapmodule
  depends_on = [ var.vnetmapmodule ]
}

module "vnetsubnetnicmodule" {
  source = "../../module/vnetsubnetnic_4"
  nicmap = var.nicmapmodule
  depends_on = [module.vnetsubnetmodule]
}
# module "vmmodule" {
#   source = "../../module/vnetsubnetnicVM_5"
#   vmmap = var.vmmapmodule
#   depends_on = [ var.nicmapmodule ]
# }

module "pipmodule" {
  source = "../../module/rg_publicip_2"
  pipmap = var.pipmapmodule
  depends_on = [ var.rgmapmodule ]
}