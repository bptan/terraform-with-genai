output "lambda_invoke_arn" {
  description = "The ARN to be used for invoking Lambda Function from API Gateway"
  value       = aws_lambda_function.example.invoke_arn
}