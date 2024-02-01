resource "local_file" "autoarrg" {
    count = 3
    filename = var.arrg[count.index]
    content  = "This is the content for file ${count.index + 1}"
}

# resource "local_file" "test" {
#     count = 3
#     filename = "${var.meta}${count.index + 1}.txt"
#     content = "This is test file ${count.index + 1}"
# }