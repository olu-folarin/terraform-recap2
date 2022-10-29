# implicit expression
# resource "local_file" "pet" {
#     filename = var.filename
#     content = "The name is ${random_pet.pet_name.id}"
# }

resource "local_file" "pet" {
    filename = var.filename
    content = "The dog is a "
    depends_on = [
      random_pet.pet_name
    ]
}

resource "random_pet" "pet_name" {
  prefix = var.adjective
  separator = var.separator
  length = var.length
}