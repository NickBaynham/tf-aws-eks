data "aws_vpc" "eks_vpc_1" {
  default = true
}

data "aws_subnet" "eks_subnet_1" {
  vpc_id = data.aws_vpc.eks_vpc_1.id
  filter {
    name   = "tag:Name"
    values = ["subnet-1"]
  }
}

data "aws_subnet" "eks_subnet_2" {
  vpc_id = data.aws_vpc.eks_vpc_1.id
  filter {
    name   = "tag:Name"
    values = ["subnet-2"]
  }
}

