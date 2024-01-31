resource "local_file" "pets" {
  filename = var.filename
  # content  = var.content 
  content = "${random_pet.random.id} that my pet name"
  file_permission = 0777

  # It will create the new file before deleting the new file
  lifecycle {
    create_before_destroy = true
  }
  # It will prevent the resource file from the delection 
    lifecycle {
    prevent_destroy = false
  }

  # Explicit dependency
  depends_on = [
    random_pet.random
  ]
}

resource "random_pet" "random" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length

}