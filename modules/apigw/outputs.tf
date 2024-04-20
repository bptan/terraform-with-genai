output "api_execution_arn" {
  description = "The execution ARN of the API Gateway REST API"
  value       = aws_api_gateway_rest_api.example.execution_arn
}

output "api_method_http_method" {
  description = "The HTTP method of the API Gateway method"
  value       = aws_api_gateway_method.example.http_method
}

output "api_resource_path" {
  description = "The path of the API Gateway resource"
  value       = aws_api_gateway_resource.example.path
}