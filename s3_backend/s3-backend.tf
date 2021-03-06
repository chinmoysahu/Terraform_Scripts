resource "aws_s3_bucket" "my_backend_bucket" {
  bucket = "ckscloud-remote-state-dev"
  acl    = "private"
  tags = {
    Name = "remote_state_bucket"
  }
}
