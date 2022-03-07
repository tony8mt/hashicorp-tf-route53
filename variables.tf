variable "hosted_zone_name" {
  description = "Parent domain name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for creating Private hosted zone"
  type        = string
  validation {
    condition = (
      length(var.ami_id) > 4 &&
      substr(var.ami_id, 0, 3) == "vpc-"
    )
    error_message = "The vpc_id value must start with \"vpc-\"."
  }
}

variable "sub_domain" {
  description = "Sub domain name"
  type        = string
}

variable "ips" {
  description = "Lists of IPs the Sub domain need to resolve to"
  type        = list(string)
}