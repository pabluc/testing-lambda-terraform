resource "aws_apigatewayv2_api" "http-crud-tutorial-api" {
  name          = "http-crud-tutorial-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "http-crud-tutorial-stage" {
  api_id = aws_apigatewayv2_api.http-crud-tutorial-api.id
  name   = "$default"

  auto_deploy=true
}

resource "aws_lambda_permission" "lambda-permission" {
  statement_id  = "AllowMyLambdaCrudAPIInvoke"
  action        = "lambda:InvokeFunction"
  function_name = "lambda_crud"
  principal     = "apigateway.amazonaws.com"

  # The /*/*/* part allows invocation from any stage, method and resource path
  # within API Gateway REST API.
  source_arn = "${aws_apigatewayv2_api.http-crud-tutorial-api.execution_arn}/*/*/*"
}
