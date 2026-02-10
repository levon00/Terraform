variable "rg_name" {
  type        = string
  description = "Resource Group name Variable."
}

variable "sa_name" {
  type        = string
  description = "Storage Account name Variable."
}

variable "Vnet_name" {
  type        = string
  description = "Vnet name Variable."
}

variable "Vnet_address" {
  type        = list(string)
  description = "Vnet address spaces"
}

variable "subnet_names" {
  type        = list(string)
  description = "Subnates names variable"
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "subnet prefixes variable"
}

variable "location" {
  type        = string
  description = "Region for resource creating"
}

variable "tags" {
  type        = map(string)
  description = "tags to all variable"
}