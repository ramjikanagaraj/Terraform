resource "local_file" "pets" {
  filename = var.filename
  #   content  = var.content 
  content = "my pets name is ${random_pet.random.id}"
}

resource "random_pet" "random" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}
