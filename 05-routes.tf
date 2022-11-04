resource "aws_apigatewayv2_route" "http-crud-tutorial-route-get-items" {
  api_id    = aws_apigatewayv2_api.http-crud-tutorial-api.id
  route_key = "GET /items"

  target = "integrations/${aws_apigatewayv2_integration.http-crud-turorial-lambda-integration.id}"
}

resource "aws_apigatewayv2_route" "http-crud-tutorial-route-get-id" {
  api_id    = aws_apigatewayv2_api.http-crud-tutorial-api.id
  route_key = "GET /items/{id}"

  target = "integrations/${aws_apigatewayv2_integration.http-crud-turorial-lambda-integration.id}"
}

resource "aws_apigatewayv2_route" "http-crud-tutorial-route-delete" {
  api_id    = aws_apigatewayv2_api.http-crud-tutorial-api.id
  route_key = "DELETE /items/{id}"

  target = "integrations/${aws_apigatewayv2_integration.http-crud-turorial-lambda-integration.id}"
}

resource "aws_apigatewayv2_route" "http-crud-tutorial-route-put" {
  api_id    = aws_apigatewayv2_api.http-crud-tutorial-api.id
  route_key = "PUT /items"

  target = "integrations/${aws_apigatewayv2_integration.http-crud-turorial-lambda-integration.id}"
}
