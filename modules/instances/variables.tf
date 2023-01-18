variable "nom_instance" {
  type        = string
  description = "le nom de ma variable"
  default     = "instance"
}

variable "instance_type" {
  type        = string
  description = "Taille du compute"
}

variable "network_name" {
  type        = string
  description = "nom unique du network"
}