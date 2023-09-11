# variable "ami_id" {
#   default = "ami-03265a0778a880afb" 
# }

variable "instance_names" {
  type = list
  default = ["MongoDB", "cart", "catalogue", "user", "redis", "shipping", "mysql", "payment", "web", "rabbitmq"]  
}

variable "Zone_id" {
  default = "Z0322425ORZJ3C8ZH8RC"  
}

variable "domain" {
  default = "chamarthiaparna.online"
}

variable "isPROD" {
   default = true
}