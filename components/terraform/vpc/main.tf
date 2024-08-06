# resource "aws_vpc" "devatmos" {
#   cidr_block = "10.99.0.0/16"
# }
#

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"
  # https://github.com/terraform-aws-modules/terraform-aws-vpc
  name = "devatmos"
  cidr = "10.99.0.0/16"
  azs  = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets  = ["10.99.24.0/21", "10.99.32.0/21", "10.99.40.0/21"]
}
