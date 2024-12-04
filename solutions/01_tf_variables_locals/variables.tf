variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region to deploy the instance"
  type        = string
}

variable "zone" {
  description = "The zone to deploy the instance"
  type        = string
}

variable "instance_name" {
  description = "The name of the GCE instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the GCE instance"
  type        = string
}

variable "image" {
  description = "The OS image for the GCE instance"
  type        = string
}

variable "network_name" {
  description = "The name of the network to attach the instance"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  type        = string
}
