module "m1" {
  source  = "./myfolder"
  file1   = var.mf
  content = var.mc
}

module "m2" {
  source  = "./myfolder"
  file1    = "mfile2"
  content = "Content from m2"
}

module "m3"{
	source = "/home/rohan/Terraform/Modules/myfolder"
	file1 = "mfile3"
	content = "content from module 3 Absolute path" 
}

variable "mf" {
  default = "mfile1"
}

variable "mc" {
  default = "file created from module 1"
}

output mo1{
	value = module.m1.o1
}

