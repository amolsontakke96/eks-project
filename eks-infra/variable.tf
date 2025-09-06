variable "vpc_name" {
    description = "value for vpc name"
    type = string
}

variable "vpc_cidr_block" {
    description = "value for vpc cidr block"
    type = string
}

variable "T-rex-public-subnet-availability-zone-1a-name" {
    description = "value T rex public subnet availability zone 1a name"
    type = string
}

variable "T-rex-public-subnet-availability-zone-1a" {
    description = "value for T rex public subnet availability zone 1a"
    type = string
}

variable "T-rex-public-subnet-availability-zone-1a-cidr-block" {
    description = "value for T rex public subnet availability zone 1a cidr block"
    type = string
}

variable "T-rex-private-subnet-availability-zone-1a-name" {
    description = "value for T rex private subnet availability zone 1a name"
    type = string
}

variable "T-rex-private-subnet-availability-zone-1a" {
    description = "value for T rex private subnet availability zone 1a"
    type = string
}

variable "T-rex-private-subnet-availability-zone-1a-cidr-block" {
    description = "value for T rex private subnet availability zone 1a cidr block"
    type = string
}

variable "T-rex-public-subnet-availability-zone-1b-name" {
    description = "value for T rex public subnet availability zone 1b name"
    type = string
}

variable "T-rex-public-subnet-availability-zone-1b" {
    description = "value for T rex public subnet availability zone 1b"
    type = string
}

variable "T-rex-public-subnet-availability-zone-1b-cidr-block" {
    description = "value for T rex public subnet availability zone 1b cidr block"
    type = string
}

variable "T-rex-private-subnet-availability-zone-1b-name" {
    description = "value for T rex private subnet availability zone 1b name"
    type = string
}

variable "T-rex-private-subnet-availability-zone-1b" {
    description = "value for T rex private subnet availability zone 1b"
    type = string
}

variable "T-rex-private-subnet-availability-zone-1b-cidr-block" {
    description = "value for T rex private subnet availability zone 1b cidr block"
    type = string
}

variable "T-rex-igw-name" {
    description = "value for T rex igw name"
    type = string
}

variable "T-rex-elastic-ip-domain" {
    description = "value for T rex elastic ip domain"
    type = string
}

variable "T-rex-elastic-ip-name" {
    description = "value for T rex elastic ip name"
    type = string
}

variable "T-rex-public-rt-name" {
    description = "value for T rex public rt name"
    type = string
}

variable "T-rex-public-route-destination_cidr_block" {
    description = "value for T rex public route destination cidr block"
    type = string  
}

variable "T-rex-private-rt-name" {
    description = "value for T rex private rt name"
    type = string
}

variable "T-rex-private-route-destination_cidr_block" {
    description = "value for T rex private route destination cidr block"
    type = string
}

variable "T-rex-nat-gateway-name" {
    description = "value for T rex nat gateway name"
    type = string
}

variable "security_group_name" {
    description = "value for security group name"
    type = string
}

variable "security_group_description" {
    description = "value for security group description"
    type = string
}

variable "security_group_tag_name" {
    description = "value for security group tag name"
    type = string
}

variable "security_group_ingress_cidr_ipv4" {
    description = "value for security group ingress cidr ipv4"
    type = string
}

variable "security_group_ingress_protocol" {
    description = "value for security group ingress protocol"
    type = string
}

variable "security_group_egress_cidr_ipv4" {
    description = "value for security group egress cidr ipv4"
    type = string
}

variable "security_group_egress_protocol" {
    description = "value for security group egress protocol"
    type = string
}

variable "demo-eks-cluster-role-name" {
    description = "value demo eks cluster role name"
    type = string
}

variable "demo-eks-cluster-name" {
    description = "value for demo eks cluster name"
    type = string
}

variable "endpoint_private_access" {
    description = "value for endpoint private access"
    type = bool
}

variable "endpoint_public_access" {
    description = "value for endpoint public access"
    type = bool
}

variable "cluster_verison" {
    description = "value for cluster version"
    type = string
}

variable "support_type" {
    description = "value for support type"
    type = string
}

variable "authentication_mode" {
    description = "value for authentication mode"
    type = string
}

variable "bootstrap_cluster_creator_admin_permissions" {
    description = "value for bootstrap cluster creator admin permissions"
    type = bool
}

variable "bootstrap_self_managed_addons" {
    description = "value for bootstrap self managed addons"
    type = bool
}

variable "demo-eks-farget-profile-role" {
    description = "value for demo eks farget profile role"
    type = string
}

variable "demo-eks-farget-profile" {
    description = "value for demo eks farget profile"
    type = string
}

variable "selector-namespace" {
    description = "value for selector namespace"
    type = list(string)
}

variable "eks-node-group-role" {
    description = "value for eks node group role"
    type = string
}

variable "eks-node-group" {
    description = "value for eks node group"
    type = string
}

variable "desired_size" {
    description = "value for desired size"
    type = number
}

variable "max_size" {
    description = "value for max size"
    type = number
}

variable "min_size" {
    description = "value for min size"
    type = number
}

variable "max_unavailable" {
    description = "value for max unavailable"
    type = number
}