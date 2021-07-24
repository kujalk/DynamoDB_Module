// DynamoDB config - Table 1
resource "aws_dynamodb_table" "dynamodb-table-1" {
  name           = var.dynamodb1-name
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = var.dynamodb1-hashkey
  range_key      = var.dynamodb1-rangekey

  dynamic "attribute" {
    for_each = var.dynamodb1-settings
    content {
      name = attribute.value.key_name
      type = attribute.value.key_type
    }
  }

  tags = {
    Name = var.dynamodb1-name
  }
}

// DynamoDB config - Table 2
resource "aws_dynamodb_table" "dynamodb-table-2" {
  name           = var.dynamodb2-name
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = var.dynamodb2-hashkey
  range_key      = var.dynamodb2-rangekey

  dynamic "attribute" {
    for_each = var.dynamodb2-settings
    content {
      name = attribute.value.key_name
      type = attribute.value.key_type
    }
  }

  tags = {
    Name = var.dynamodb2-name
  }
}

