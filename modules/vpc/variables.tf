variable "private_subnets" {
  description = "Volume size of root volumen of Web Server"
  type        = list(string)
  default     = []
}
variable "azs" {
  description = "availability zones for VPC"
	type = list(string)
	default = []
}
variable "public_subnets" {
  description = "Assigns IPv6 private subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = string
  default     = null
}

