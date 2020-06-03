# Copyright 2020 Hewlett Packard Enterprise Development LP

variable "cloudPassword" {}

variable "instanceNameDatabase" {}
variable "instanceIPAddressDatabase" {}

variable "nameservers" {}

variable "netmaskDatabaseServer" {}

variable "gatewayDatabaseServer" {}

variable "template" {}

variable "cloudUserName" {}

variable "cloudIP" {}

module "database" {
  source           = "./modules/database_tier"
  
  cloudPassword = "${var.cloudPassword}"
  cloudUserName = "${var.cloudUserName}"
  cloudIP = "${var.cloudIP}"
  instanceNameDatabase = "${var.instanceNameDatabase}"
  instanceIPAddressDatabase       = "${var.instanceIPAddressDatabase}"
  nameservers = "${var.nameservers}"
  netmaskDatabaseServer = "${var.netmaskDatabaseServer}"
  gatewayDatabaseServer = "${var.gatewayDatabaseServer}"
  template = "${var.template}"
}