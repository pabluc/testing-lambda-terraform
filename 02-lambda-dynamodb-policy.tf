resource "aws_iam_policy" "lambda-permission-dynamodb" {
  name        = "lambda-permission-dynamodb"
  description = "Write Read dynamodb"

  policy = <<EOF
{  
  "Version": "2012-10-17",
  "Statement":[{
    "Effect": "Allow",
    "Action": [
     "dynamodb:BatchGetItem",
     "dynamodb:GetItem",
     "dynamodb:Query",
     "dynamodb:Scan",
     "dynamodb:BatchWriteItem",
     "dynamodb:PutItem",
     "dynamodb:UpdateItem"
    ],
    "Resource": "${aws_dynamodb_table.http-crud-tutorial-items.arn}"
   }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.http-crud-turorial-role.name
  policy_arn = aws_iam_policy.lambda-permission-dynamodb.arn
}
