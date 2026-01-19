resource "local_file" "file" {
	filename = var.file1
	content = var.content
}

variable file1 {
	default = "varfile1"
}

variable content {
	default = "Contemt form res.tf variable"
}

output o1{
	value = local_file.file.id
}

