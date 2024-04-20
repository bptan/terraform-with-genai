# Terraform AWS API Gateway and Lambda Function Module

This Terraform module deploys an AWS API Gateway and a Lambda function.

## Usage

First, define your variables in a `terraform.tfvars` file. Here's an example:

```terraform
settings = {
  api_name                 = "example_api"
  api_description          = "This is an example API"
  resource_path_part       = "example_resource"
  http_method              = "GET"
  authorization            = "NONE"
  integration_http_method  = "POST"
  integration_type         = "AWS_PROXY"
  lambda_function_name     = "example_lambda"
  lambda_handler           = "index.handler"
  lambda_runtime           = "nodejs12.x"
  lambda_filename          = "lambda_function_payload.zip"
  lambda_permission_statement_id = "AllowExecutionFromAPIGateway"
  lambda_permission_action       = "lambda:InvokeFunction"
  lambda_permission_principal    = "apigateway.amazonaws.com"
}
```
Then, run the following commands to initialize Terraform and apply the configuration:
```
terraform init
terraform apply
```

## Modules
This configuration uses two modules:

apigw: This module creates an API Gateway.
lambda: This module creates a Lambda function and gives the API Gateway permission to invoke it.
## Variables
See variables.tf for a list of variables you can set.

## Outputs
See outputs.tf for a list of values that this configuration outputs.

## License
This project is licensed under the MIT License - see the LICENSE file for details.