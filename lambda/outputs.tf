output "terraform_aws_role_output" {
    value = aws_iam_role.iam_for_lambda.name
}

output "terraform_aws_role_arn_output" {
    value = aws_iam_role.iam_for_lambda.arn
}

output "aws_logging_arn_output" {
    value = aws_iam_policy.lambda_logging.arn
}
