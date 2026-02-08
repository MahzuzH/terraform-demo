variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my-creds.json"
}

variable "project" {
  description = "Project Name"
  default     = "terraform-demo-mhz"
}

variable "region" {
  description = "Region Name"
  default     = "asia-southeast2"
}

variable "location" {
  description = "Project Location"
  default     = "asia-southeast2"
}

variable "bq_dataset_name" {
  description = "My BigQuerry Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Storage Name"
  default     = "terraform-demo-mhz-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}