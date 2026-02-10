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

variable "subnets" {
  type        = map(object({ subnets_prefixes = string }))
  description = "map of subnets Variable."
}

variable "location" {
  type        = string
  description = "Region for resource creating"
}

variable "tags" {
  type        = map(string)
  description = "tags to all variable"
}