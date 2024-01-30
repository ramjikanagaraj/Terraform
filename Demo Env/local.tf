resource "local_file" "pets" {
  filename = var.filename
  # content  = var.content 
  content = "${random_pet.random.id} that my pet name"

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
