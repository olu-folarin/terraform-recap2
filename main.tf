# implicit expression
# resource "local_file" "pet" {
#     filename = var.filename
#     content = "The name is ${random_pet.pet_name.id}"
# }

# resource "local_file" "pet" {
#     filename = var.filename
#     content = var.content
#     depends_on = [
#       random_pet.pet_name
#     ]
# }

resource "random_pet" "pet_name" {
  prefix    = var.adjective
  separator = var.separator
  length    = var.length

# to ensure a new resource is first created before an old one is destroyed, use the block below.
  # lifecycle {
  #   create_before_destroy = true
  # }

  # this ensures the old resource isn't deleted
  # lifecycle {
  #   prevent_destroy = true
  # }

  # with the lifecycle block, u could also determine which resources are to be left untouched or if all resources are to be left undeleted.
  # selected resources
  # lifecycle {
  #   ignore_changes = [
  #     prefix, length
  #   ]
  # }
  # for all attributes
  lifecycle {
    ignore_changes = all
  }
}