resource "local_file" "pets" {
  filename = var.filename
  # content  = var.content 
  content         = "${random_pet.random.id} that my pet name"
  file_permission = 0777

  lifecycle {
    # It will create the new file before deleting the new file
    create_before_destroy = true
    # It will prevent the resource file from the delection
    prevent_destroy = false
    # It will ignore the mentioned resource changes
    ignore_changes = [ file_permission ]
  }

  # Explicit dependency
  depends_on = [
    random_pet.random
  ]
}

# By using the data resource created a new file
resource "local_file" "pet2" {
  filename = "pet2.txt"
  content = data.local_file.test.content
}

# Data resource file created manual
data "local_file" "test" {
  filename = "test.txt"
}

resource "random_pet" "random" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length

}