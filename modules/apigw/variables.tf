variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "The description of the API Gateway"
  type        = string
}

variable "resource_path_part" {
  description = "The path part of the API Gateway resource"
  type        = string
}

variable "http_method" {
  description = "The HTTP method for the API Gateway method"
  type        = string
}

variable "authorization" {
  description = "The authorization type for the API Gateway method"
  type        = string
}

variable "integration_http_method" {
  description = "The HTTP method for the API Gateway integration"
  type        = string
}

variable "integration_type" {
  description = "The integration type for the API Gateway integration"
  type        = string
}

# variable "lambda_function_name" {
#   description = "The name of the Lambda function to integrate with the API Gateway"
#   type        = string
# }

variable "invoke_arn" {
  description = "The invoke_arn of the Lambda function to integrate with the API Gateway"
  type        = string
}