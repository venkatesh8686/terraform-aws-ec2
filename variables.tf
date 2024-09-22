#mandatory user should supply
variable "ami_id" {
  type        = string
  #default     = "ami-09c813fb71547fc4f"
}


# optional, default it will take
variable "instance" {
    default = "t3.micro"
    type = string
    validation {
        condition = contains(["t3.micro","t3.small","t3.medium"],var.instance)
        error_message = "valid only var:instance are t3.micro,t3.small.t3,medium"
    }
}

#mandatory user must supply
variable "security_group_id" {
    type = list(string)
    default = ["sg-03cd9366e2b4cccae"]
}