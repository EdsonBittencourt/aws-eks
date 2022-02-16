module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.24.0"
  cluster_name    = local.cluster_name
  cluster_version = "1.20"
  subnets         = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  workers_group_defaults = {
    root_volume_type = "gp2"
  }

  worker_groups = [
    {
      name                          = "Workers-1"
      instance_type                 = "t3.medium"
      # additional_userdata           = ""
      additional_security_group_ids = [aws_security_group.worker_group_mgmt_one.id]
      "asg_min_size" = "3"
      "asg_desired_capacity" = "3"
      "asg_max_size" =  "6"
    },
  ]
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}
