# variable "filename" {
#   default = "./file.txt"
# }

# variable "adjective" {
#   default = "little"
# }

# variable "separator" {
#   default = "."
# }

# variable "length" {
#   default = 1
# }

# variable "content" {
#   default = "The dog is a "
# }

# using the count meta argument to iterate through the variable below to be referenced in a local file resource.
variable "filename" {
  type = set(string)
  default = [
    "./baby.txt",
    "./young.txt",
    "./old.txt"
  ]
}

variable "content" {
  default = "test run"
}