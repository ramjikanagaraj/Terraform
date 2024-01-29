resource "local_file" "pets" {
  filename = var.filename
  content  = var.content
}

resource "random_pet" "random" {
  prefix    = var.prefix
  separator = var.separator 
  length    = var.length
}
