resource "aws_lambda_function" "example" {
  function_name = var.lambda_function_name
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime
  # role          = aws_iam_role.example.arn
  role          = var.iam_role_arn
  filename      = var.lambda_filename
}

resource "aws_lambda_permission" "example" {
  statement_id  = var.lambda_permission_statement_id
  action        = var.lambda_permission_action
  function_name = aws_lambda_function.example.function_name
  principal     = var.lambda_permission_principal
  source_arn    = var.source_arn
  # source_arn = "${aws_api_gateway_rest_api.example.execution_arn}/*/${aws_api_gateway_method.example.http_method}${aws_api_gateway_resource.example.path}"
}