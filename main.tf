provider "aws" {
  region                  = "ap-southeast-1"
  shared_credentials_file = "C:\\Users\\user1\\.aws\\credentials"
  profile                 = "sample"
}

module "Sample_App" {
  source = "./DynamoDB_Module" ##Do not change this as this is the module name
  //config for dynamodb - 1
  dynamodb1-name     = "GameTable"
  dynamodb1-hashkey  = "UserId"
  dynamodb1-rangekey = "GameId"
  dynamodb1-settings = [
    { key_name = "UserId"
      key_type = "S"
    },
    {
      key_name = "GameId"
      key_type = "S"
    }
  ]

  //config for dynamodb-2
  dynamodb2-name     = "Customer"
  dynamodb2-hashkey  = "CustomerId"
  dynamodb2-rangekey = "BillId"
  dynamodb2-settings = [
    { key_name = "CustomerId"
      key_type = "S"
    },
    {
      key_name = "BillId"
      key_type = "S"
    }
  ]
}