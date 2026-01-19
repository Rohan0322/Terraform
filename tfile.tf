resource "local_file" "file" {
	filename = var.file1
	content = var.content
}

variable file1 {
	default = "gitfile.txt"
}

variable content {
	default = "content from git module"
}
