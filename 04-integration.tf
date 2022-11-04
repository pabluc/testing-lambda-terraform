resource "aws_apigatewayv2_integration" "http-crud-turorial-lambda-integration" {
  api_id           = aws_apigatewayv2_api.http-crud-tutorial-api.id
  integration_type = "AWS_PROXY"
  integration_uri  = aws_lambda_function.http_crud_turorial_lambda.invoke_arn

  integration_method = "POST"
}
