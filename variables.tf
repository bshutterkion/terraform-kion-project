variable "ou_id" {
  description = "Parent OU ID or name for the OU"
  type        = string
}

variable "name" {
  description = "Name of the project"
  type        = string
}

variable "permission_scheme_id" {
  description = "Permission scheme ID"
  type        = number
  default     = 3
}

variable "description" {
  description = "Description of the project"
  type        = string
  default     = null
}

variable "owner_user_ids" {
  description = "ID of the owner user"
  type        = list(number)
  default     = [1]
}

variable "owner_user_group_ids" {
  description = "List of owner user group IDs"
  type        = list(number)
  default     = [1]
}

variable "project_funding" {
  description = "Project funding details"
  type = list(object({
    amount            = number
    funding_order     = number
    funding_source_id = number
    start_datecode    = string
    end_datecode      = string
  }))
  default = []
}

variable "auto_pay" {
  description = "Whether auto pay is enabled"
  type        = bool
  default     = null
}

variable "budget_start_datecode" {
  description = "Start datecode for the budget"
  type        = string
  default     = null
}

variable "budget_end_datecode" {
  description = "End datecode for the budget"
  type        = string
  default     = null
}

variable "budget_amount" {
  description = "Budget amount"
  type        = number
  default     = null
}

variable "default_aws_region" {
  description = "Default AWS region"
  type        = string
  default     = null
}

variable "labels" {
  description = "A map of label keys to their corresponding values"
  type        = map(string)
  default     = {}
}

variable "last_updated" {
  description = "Last updated timestamp"
  type        = string
  default     = null
}
