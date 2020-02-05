// Global parameter
variable "global_prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

// Specific resource

variable "name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "quota" {
  type    = number
  default = 50
}

locals {
  resource_name = "${var.global_prefix}-${var.environment}-share-${var.name}"
}
