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

# resource "random_pet" "pet_name" {
#   prefix    = var.adjective
#   separator = var.separator
#   length    = var.length

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
#   lifecycle {
#     ignore_changes = all
#   }
# }


# data sources: this is a read-only block used to access files created outside terraform for subsequent use by other resources.
# data "local_file" "pushon" {
#   filename = "/Users/folaRin/Desktop/kodkloudterra/basics1/file1.txt"
# }

# resource "local_file" "move" {
#   filename = "/Users/folaRin/Desktop/kodkloudterra/basics1/keepmoving.txt"
#   content  = data.local_file.pushon.content

#   lifecycle {
#     create_before_destroy = true
#   }
# }

# using count to iterate and create 3 unique files -- this keeps shooting an error
# resource "local_file" "age_range" {
#   filename = var.filename[count.index]
#   count = length(var.filename)
# }

# for_each
resource "local_file" "names" {
  filename = each.value
  for_each = toset(var.filename)
  content = var.content
}