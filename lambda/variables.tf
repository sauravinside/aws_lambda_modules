######################################
###  Variables for Lambda Function ###
######################################

variable "iam_role_name" {
  type        = string
  description = "The name of the iam role."
}

variable "iam_policy_name" {
  type        = string
  description = "The name of the iam policy."
}

variable "function_name" {
  type        = string
  description = "The name of the function"
}

variable "runtime" {
  type        = string
  description = "The name of the runtime"
}
