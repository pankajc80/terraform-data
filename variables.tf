variable "instance_tags" {
  description = "A map of tags to assign to the EC2 instance"
  type        = map(string)
  default = {
    Name        = "MyFirstEC2Instance"
    Team        = "DevOps"
    Environment = "Development"
  }
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instance"
  type        = list(string)
  default     = ["sg-0e8161a7ceee8ff6f"]
}