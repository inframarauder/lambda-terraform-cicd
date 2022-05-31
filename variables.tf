variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "The AWS Region to manage resources in"
}

variable "lambda_function_name" {
  type        = string
  default     = "TestLambdaPython"
  description = "The name of the Lambda function"
}

variable "lambda_description" {
  type        = string
  default     = "Test Lambda function written in Python"
  description = "The description of the Lambda function"
}