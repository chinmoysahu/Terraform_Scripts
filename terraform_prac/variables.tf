variable "vpc_cidr" {
  description = "CIDR for VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "region_val" {
  description = "region for provider"
  type        = string
  default     = "us-east-1"
}

variable "nat_amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-02fe94dee086c0c37"
    us-east-2 = "TBD"
  }
}

variable "web_amis" {
  type = map(string)
  default = {
    us-east-1 = "ami-047a51fa27710816e"
    us-east-2 = "TBD"
  }
}

variable "web_ec2_count" {
  description = "Num of ec2 instances for web"
  type        = string
  default     = "2"
}

variable "web_instance_type" {
  description = "Instance type for web"
  type        = string
  default     = "t2.micro"
}

variable "web_tags" {
  type = map(string)
  default = {
    Name = "Webserver"
  }
}

variable "my_app_s3_bucket" {
  default = "javahome-app-dev-ckslearn"
}
