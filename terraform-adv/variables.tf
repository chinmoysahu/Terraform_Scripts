variable "bucket_name" {
  description = "S3 bucket name"
  default     = "demo-remote-state-bucket-dev"
}

variable "access_key" {
  description = "AWS Access Key"
  default     = ""
}

variable "secret_key" {
  description = "AWS Secret Key"
  default     = ""
}

variable "my_key" {
  description = "My key pair"
  default     = "kube-demo"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AWS AMI"
  default     = "ami-0915bcb5fa77e4892"
}

variable "instancetype" {
  description = "AWS EC2 instance type"
  default     = "t2.micro"
}

variable "subnetid" {
  description = "AWS subnet id"
  default     = "subnet-b91bb998"
}

variable "AppName" {
  description = "Application Name on the Host"
  default     = "Bastion-Host"
}

variable "Env" {
  description = "Environment"
  default     = "Dev"
}

variable "HostIp" {
  description = "Host Public IP to allow for ssh - my laptop :)"
  default     = "75.25.62.252/32"
}

variable "PrivateIp" {
  description = "Private IP IP Address Range"
  default     = "10.16.0.0/16"
}
