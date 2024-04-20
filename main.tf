resource "aws_iam_role" "example" {
  name = "example_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

module "apigw" {
  source = "./modules/apigw"

  api_name                = var.settings.api_name
  api_description         = var.settings.api_description
  resource_path_part      = var.settings.resource_path_part
  http_method             = var.settings.http_method
  authorization           = var.settings.authorization
  integration_http_method = var.settings.integration_http_method
  integration_type        = var.settings.integration_type
  invoke_arn              = module.lambda.lambda_invoke_arn
}

module "lambda" {
  source = "./modules/lambda"

  lambda_function_name           = var.settings.lambda_function_name
  lambda_handler                 = var.settings.lambda_handler
  lambda_runtime                 = var.settings.lambda_runtime
  lambda_filename                = var.settings.lambda_filename
  lambda_permission_statement_id = var.settings.lambda_permission_statement_id
  lambda_permission_action       = var.settings.lambda_permission_action
  lambda_permission_principal    = var.settings.lambda_permission_principal
  iam_role_arn                   = aws_iam_role.example.arn
  source_arn                     = "${module.apigw.api_execution_arn}/*/${module.apigw.api_method_http_method}${module.apigw.api_resource_path}"
  # source_arn                    = "${aws_api_gateway_rest_api.example.execution_arn}/*/${aws_api_gateway_method.example.http_method}${aws_api_gateway_resource.example.path}"  
  # source_arn                    = aws_api_gateway_rest_api.example.execution_arn
}