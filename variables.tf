variable "region" {}
variable "ami_id" {}
variable "instance_name" {}
variable "instance_type" {}
variable "instance_profile" {}
variable "key_pair" {}
variable "security_group" {
  type        = list(string)
  default     = []
  description = "List of security groups"
}
variable "tags" {
  type = map(string)
  default = {
    Name = "Tf-Demo"
  }
}
