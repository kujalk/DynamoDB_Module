variable "dynamodb1-name" {
  type        = string
  description = "Name of DynamoDB Table - 1"
}

variable "dynamodb1-hashkey" {
  type        = string
  description = "HashKey of DynamoDB Table - 1"
}

variable "dynamodb1-rangekey" {
  type        = string
  description = "Rangekey of DynamoDB Table - 1"
}

variable "dynamodb1-settings" {
  type = set(object({
    key_name = string
    key_type = string
  }))

  default = [
    { key_name = "UserId"
      key_type = "S"
    },
    {
      key_name = "Cool"
      key_type = "S"
    }
  ]
}

variable "dynamodb2-name" {
  type        = string
  description = "Name of DynamoDB Table - 2"
}

variable "dynamodb2-hashkey" {
  type        = string
  description = "HashKey of DynamoDB Table - 2"
}

variable "dynamodb2-rangekey" {
  type        = string
  description = "Rangekey of DynamoDB Table - 2"
}

variable "dynamodb2-settings" {
  type = set(object({
    key_name = string
    key_type = string
  }))

  default = [
    { key_name = "UserId"
      key_type = "S"
    },
    {
      key_name = "Cool"
      key_type = "S"
    }
  ]
}