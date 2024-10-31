variable "region" {
  description = "The region to deploy Linode instances in"
  default = "us-east"
}

variable "ssh_key" {
  description = "SSH Public Key Fingerprint"
  default     = "~/.ssh/id_rsa.pub"
}

variable "linode_token" {
  description = "Linode Token"
  default = ""
}