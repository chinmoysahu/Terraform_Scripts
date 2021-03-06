provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "remote_state_bucket" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = "true"
}

resource "aws_security_group" "bastion_sg" {
  name        = "bastion"
  description = "bastion security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.HostIp]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.PrivateIp]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bastion" {
  ami                    = var.ami_id
  instance_type          = var.instancetype
  key_name               = var.my_key
  subnet_id              = var.subnetid
  vpc_security_group_ids = ["${aws_security_group.bastion_sg.id}"]

  # provisioner "file" {
  #   source      = "toolinstall.txt"
  #   destination = "/home/ec2-user/toolinstall.sh"
  #
  #   connection {
  #     type        = "ssh"
  #     user        = "ec2-user"
  #     host        = self.public_ip
  #     private_key = file("C:\\trainings\\kubectlbinary\\kube-demo.ppk")
  #   }
  # TRY using the local key C:\trainings\kubectlbinary\kube-demo.ppk
  # }
  #Use command line below or as inline provisioner => user_data = "file("user-data.sh")"
  user_data = <<-DATA
      #! /bin/bash
      #sudo /home/ec2-user/toolinstall.sh skip_aws
  DATA

  tags = {
    Name = var.AppName
    Env  = var.Env
  }
}
