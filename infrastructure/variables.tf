variable "aws_region" {
  description = "AWS region for deployment"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  default     = "cluster-main"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS nodes"
  default     = "t2.micro"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  default     = 3
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  default     = 1
}

variable "db_instance_class" {
  description = "Database instance type"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name"
  default     = "webappdb"
}

variable "db_username" {
  description = "Database master username"
  default     = "admin"
}

variable "db_password" {
  description = "Database master password"
  sensitive   = true
}

variable "s3_bucket_name" {
  description = "S3 bucket for document storage"
  default     = "webapp-doc-storage"
}