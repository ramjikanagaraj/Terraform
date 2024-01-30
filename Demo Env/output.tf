output "random" {
  value = random_pet.random.id
  description = "This is the output file"
}

output "pets" {
  value = local_file.pets.id
  description = "This is the output file"
}