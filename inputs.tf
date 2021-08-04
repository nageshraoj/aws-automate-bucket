
variable "default_location" {
    description = "Default location for infra"
  type        = string
#   default     = "us-east-2"
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