variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "Environment name (dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "data-processor"
}

variable "raw_bucket_name" {
  description = "Name of the S3 bucket for raw input data (must be globally unique)"
  type        = string
  default     = "raw-data-devops-mumbai-2025-55522215"
}

variable "processed_bucket_name" {
  description = "Name of the S3 bucket for processed output data (must be globally unique)"
  type        = string
  default     = "processed-data-devops-mumbai-2025-55522215"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "data-processor-eks"
}

variable "eks_node_instance_type" {
  description = "EC2 instance type for EKS worker nodes (t3.small for cost optimization)"
  type        = string
  default     = "t3.small"
}

variable "eks_desired_size" {
  description = "Desired number of worker nodes (keep at 1 for cost savings)"
  type        = number
  default     = 1
}

variable "eks_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "eks_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 2
}

variable "kubernetes_namespace" {
  description = "Kubernetes namespace for the application"
  type        = string
  default     = "data-processing"
}

variable "service_account_name" {
  description = "Kubernetes ServiceAccount name"
  type        = string
  default     = "s3-processor-sa"
}
