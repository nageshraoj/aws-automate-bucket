variable "default_region" {
  description = "Default region for infra"
  type        = string
#   default     = "t2.micro"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
#   default     = "nagesh-080421"
}

variable "ec2_type" {
  description = "Type of Instance"
  type        = string
  default     = "t2.micro"
}