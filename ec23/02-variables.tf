variable "instance_types" {
  type =list(string)
  default = [ "t2.nano","t2.micro","t2.medium" ]
  //            0           1           2
}

variable "ami_id" {
  type = string
  default = "ami-0e001c9271cf7f3b9"
}

variable "key_name" {
  type = string
  default = "1104"
}