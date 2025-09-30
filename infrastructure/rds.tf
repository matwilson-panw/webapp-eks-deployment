resource "aws_db_instance" "rds" {
  allocated_storage   = 20
  engine              = "postgres"
  engine_version      = "14.3"
  instance_class      = var.db_instance_class
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  publicly_accessible = false
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  deletion_protection = true
}