resource "aws_iam_role" "http-crud-turorial-role" {
  name = "http-crud-turorial-role"

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

resource "aws_lambda_function" "http_crud_turorial_lambda" {
  filename      = "lambda_code/index.js.zip"
  function_name = "lambda_crud"
  role          = aws_iam_role.http-crud-turorial-role.arn
  handler       = "index.handler"

  source_code_hash = filebase64sha256("lambda_code/index.js.zip")

  runtime = "nodejs14.x"
}
