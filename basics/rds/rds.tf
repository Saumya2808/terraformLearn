resource "aws_db_instance" "test_rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "postgres"
  engine_version       = "14.6"
  instance_class       = "db.t3.micro"
  username             = "root" // Can't be admin in case of postgres
  password             = "root12345" // Can't be less than 8 
  skip_final_snapshot  = true
}
