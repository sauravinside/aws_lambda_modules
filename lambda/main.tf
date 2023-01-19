#######################################
##     Module :: Lambda Function     ##
#######################################

resource "aws_iam_role" "iam_for_lambda" {
  name = var.iam_role_name

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

resource "aws_iam_policy" "lambda_logging" {
  name        = var.iam_policy_name
  path        = "/"
  description = "IAM policy for logging from a lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*",
      "Effect": "Allow"
    }
  ]
}
EOF
}
# attachemnet
resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = aws_iam_role.iam_for_lambda.name
  policy_arn = aws_iam_policy.lambda_logging.arn
}

# For Making zip file

data "archive_file" "zip_file" {
  type        = "zip"
  source_dir  = "${path.module}/python/"
  output_path = "${path.module}/python/hello-python.zip"
}



resource "aws_lambda_function" "test_lambda" {
  filename      = "${path.module}/python/hello-python.zip"
  function_name = var.function_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "hello-python.lambda_handler"

  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  #   source_code_hash = filebase64sha256("index.mjs")

  runtime    = var.runtime
  depends_on = [aws_iam_role_policy_attachment.lambda_logs]
}
