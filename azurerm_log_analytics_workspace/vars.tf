# General variables

variable "global_prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

variable "environment_short" {
  type = string
}

variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

# Log analytics workspace related variables

variable "sku" {
  type        = string
  description = "The SKU of the log analytics workspace. The only option after 2018-04-03 is PerGB2018. See here for more details: http://aka.ms/PricingTierWarning"
  default     = "PerGB2018"
}

variable "retention_in_days" {
  type        = number
  description = "The number of data retention in days."
  default     = 180
}

locals {
  resource_name = "${var.global_prefix}-${var.environment_short}-law-${var.name}"
}

