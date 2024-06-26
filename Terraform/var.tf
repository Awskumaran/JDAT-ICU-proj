variable "access_key" {
        description = "Access key to AWS console"
}
variable "secret_key" {
        description = "Secret key to AWS console"
}


variable "instance_name" {
        description = "Name of the instance to be created"
        default = "jdat-demo"
}

variable "instance_type" {
        default = "t2.medium"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-06c239494706675ea"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-09298640a92b2d12c"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


variable "ami_key_pair_name" {
        default = "jdat-demo.pem"
}

variable "vpc_id" {
        default = "vpc-0b030ac4b2d1e072d"
}
