variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "ssh_port" {
  description = "The port the server will use for SSH requests"
  type        = number
  default     = 22
}

variable "alb_name" {
  description = "The name of the Load Balancer"
  type        = string
  default     = "example-alb"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "example-instance-sg"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "example-alb-sg"
}