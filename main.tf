resource "local_file" "pet" {
    filename = var.filename
    content = "The name is ${random_pet.pet_name.id}"
}

resource "random_pet" "pet_name" {
  prefix = var.adjective
  separator = var.separator
  length = var.length
}