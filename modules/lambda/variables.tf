variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_handler" {
  description = "The handler of the Lambda function"
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime of the Lambda function"
  type        = string
}

variable "lambda_filename" {
  description = "The filename of the Lambda function"
  type        = string
}

variable "lambda_permission_statement_id" {
  description = "The statement ID of the Lambda permission"
  type        = string
}

variable "lambda_permission_action" {
  description = "The action of the Lambda permission"
  type        = string
}

variable "lambda_permission_principal" {
  description = "The principal of the Lambda permission"
  type        = string
}

variable "iam_role_arn" {
  description = "The ARN of the IAM role that the Lambda function will assume"
  type        = string
}

variable "source_arn" {
  description = "The ARN for which this permission applies"
  type        = string
}