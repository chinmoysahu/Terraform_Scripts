variable "name"{
  description = "Name to be used on all resources as prefix"
  default = "nginx"
}

variable "region"{
  default = "us-east-1"
}

variable "tenancy"{
  description = "The tenancy of the instance"
  default = "default"
}

variable "key_name" {
  description = "The key name to use for the instance"
  default = "cksxps"
}

variable "instance_count"{
  description = "number of instances to launch"
  default = 1
}

variable "cluster_name" {
  description = "Cluster name to use"
  default = "nginx-webserver"
}

variable "HostIp" {
  description = " Host IP to be allowed SSH for"
  default     = "0.0.0.0/0"
}

variable "ami"{
  description = "ID of AMI to use for the instance"
  default = "ami-0915bcb5fa77e4892"
}

variable "instance_type"{
  description = "The type of instance to start"
  default = "t2.micro"
}
