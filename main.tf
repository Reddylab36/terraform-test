resource "local_file" "my-pets" {
  filename = "pets.txt"
  content = "The cat name is King"
}
resource "random_pet" "petname" {
  prefix = "MR"
  separator = "."
  length = "1"
}
