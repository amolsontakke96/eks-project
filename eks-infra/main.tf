terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
    source = "github.com/amolsontakke96/terraform-modules/vpc"
    vpc_name = {
        Name = var.vpc_name
    }

    vpc_cidr_block = var.vpc_cidr_block

    T-rex-public-subnet-availability-zone-1a-name = {
        Name = var.T-rex-public-subnet-availability-zone-1a-name
    }
    T-rex-public-subnet-availability-zone-1a = var.T-rex-public-subnet-availability-zone-1a
    T-rex-public-subnet-availability-zone-1a-cidr-block = var.T-rex-public-subnet-availability-zone-1a-cidr-block

    T-rex-private-subnet-availability-zone-1a-name = { 
        Name = var.T-rex-private-subnet-availability-zone-1a-name
    }
    T-rex-private-subnet-availability-zone-1a = var.T-rex-private-subnet-availability-zone-1a
    T-rex-private-subnet-availability-zone-1a-cidr-block = var.T-rex-private-subnet-availability-zone-1a-cidr-block

    T-rex-public-subnet-availability-zone-1b-name = { 
        Name = var.T-rex-public-subnet-availability-zone-1b-name
    }
    T-rex-public-subnet-availability-zone-1b = var.T-rex-public-subnet-availability-zone-1b
    T-rex-public-subnet-availability-zone-1b-cidr-block = var.T-rex-public-subnet-availability-zone-1b-cidr-block

    T-rex-private-subnet-availability-zone-1b-name = { 
        Name = var.T-rex-private-subnet-availability-zone-1b-name
    }
    T-rex-private-subnet-availability-zone-1b = var.T-rex-private-subnet-availability-zone-1b
    T-rex-private-subnet-availability-zone-1b-cidr-block = var.T-rex-private-subnet-availability-zone-1b-cidr-block

    T-rex-igw-name = {
        Name = var.T-rex-igw-name
    }
    T-rex-elastic-ip-domain = var.T-rex-elastic-ip-domain
    T-rex-elastic-ip-name = {
        Name = var.T-rex-elastic-ip-name
    }
    T-rex-public-rt-name = {
        Name = var.T-rex-public-rt-name
    }
    T-rex-public-route-destination_cidr_block = var.T-rex-public-route-destination_cidr_block
    T-rex-private-rt-name = {
        Name = var.T-rex-private-rt-name
    }
    T-rex-private-route-destination_cidr_block = var.T-rex-private-route-destination_cidr_block
    T-rex-nat-gateway-name = { 
        Name = var.T-rex-nat-gateway-name
    }
    security_group_name = var.security_group_name
    security_group_description = var.security_group_description
    security_group_tag_name = {
        Name = var.security_group_tag_name
    }
    security_group_ingress_cidr_ipv4 = var.security_group_ingress_cidr_ipv4
    security_group_ingress_protocol = var.security_group_ingress_protocol
    security_group_egress_cidr_ipv4 = var.security_group_egress_cidr_ipv4
    security_group_egress_protocol = var.security_group_egress_protocol
}


module "eks" {
    source = "github.com/amolsontakke96/terraform-modules/eks"
    demo-eks-cluster-role-name = var.demo-eks-cluster-role-name
    demo-eks-cluster-name = var.demo-eks-cluster-name
    public_subnet_id_1a  = module.vpc.public_subnet_id_1a
    public_subnet_id_1b  = module.vpc.public_subnet_id_1b
    private_subnet_id_1a = module.vpc.private_subnet_id_1a
    private_subnet_id_1b = module.vpc.private_subnet_id_1b
    endpoint_private_access = var.endpoint_private_access
    endpoint_public_access = var.endpoint_public_access
    cluster_verison = var.cluster_verison
    support_type = var.support_type
    authentication_mode = var.authentication_mode
    bootstrap_cluster_creator_admin_permissions = var.bootstrap_cluster_creator_admin_permissions
    bootstrap_self_managed_addons = var.bootstrap_self_managed_addons
    demo-eks-farget-profile-role = var.demo-eks-farget-profile-role
    demo-eks-farget-profile = var.demo-eks-farget-profile
    selector-namespace = var.selector-namespace
    eks-node-group-role = var.eks-node-group-role
    eks-node-group = var.eks-node-group
    desired_size = var.desired_size
    max_size = var.max_size
    min_size = var.min_size
    max_unavailable = var.max_unavailable
}