variable "bucket_name" {
  type        = string
  default     = "cvdevops-nassim-2023"
  description = "Bucket Name"
}

variable "bucket_key" {
  type        = string
  description = "Bucket Key"
}

variable "bucket_source" {
  type        = string
  description = "Input Path"
}

variable "bucket_content_type" {
  type        = string
  default     = "application/pdf"
  description = "Bucket content type"
}

variable "bucket_acl" {
  type        = string
  default     = "public-read"
  description = "Bucket access"
}