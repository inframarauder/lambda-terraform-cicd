module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = var.lambda_function_name
  description   = var.lambda_description
  handler       = "index.handler"
  runtime       = "python3.8"

  source_path = "lambda/"
  create_lambda_function_url = true

  tags = {
    ManagedBy = "Terraform"
  }
}

output "lambda_function_url" {
  value = module.lambda_function.lambda_function_url
}