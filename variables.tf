variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type_bastion" {
  description = "Instance type for bastion host"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_web" {
  description = "Instance type for web servers"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_db" {
  description = "Instance type for database server"
  type        = string
  default     = "t3.small"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "techcorp-key"  # Must match what is created in AWS
}

variable "my_ip" {
  description = "Your public IP address for bastion SSH access (add /32 at the end)"
  type        = string
  default     = "0.0.0.0/0"  # Replace with your IP, e.g., "123.45.67.89/32"
}