variable "settings" {
  description = "Settings for the API Gateway and Lambda function"
  type = object({
    api_name                 = string
    api_description          = string
    resource_path_part       = string
    http_method              = string
    authorization            = string
    integration_http_method  = string
    integration_type         = string
    lambda_function_name     = string
    lambda_handler           = string
    lambda_runtime           = string
    lambda_filename          = string
    lambda_permission_statement_id = string
    lambda_permission_action       = string
    lambda_permission_principal    = string
  })
}