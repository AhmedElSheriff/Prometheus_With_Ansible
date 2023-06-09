variable "tags" {
  type = list
  default = ["prometheus", "node_exporter"]
}

variable "key_name" {
  type = string
  default = "aws-iti-lab"
}