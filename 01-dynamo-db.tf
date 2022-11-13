resource "aws_dynamodb_table" "http-crud-tutorial-items" {
  name           = "http-crud-tutorial-items"
  hash_key       = "id"
  read_capacity  = 10
  write_capacity = 10

  attribute {
    name = "id"
    type = "S"
  }
}
