module "folder1" {
  source = "./lambda"

  iam_role_name   = var.iam_role_name
  iam_policy_name = var.iam_policy_name
  function_name   = var.function_name
  runtime         = var.runtime

}
