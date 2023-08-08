output "rds-endpoint" {
    value = aws_db_instance.classic_rds_oracle.endpoint
  
}


output "db_name" {
    value = aws_db_instance.classic_rds_oracle.db_name
  
}


output "rds_port" {
    value = aws_db_instance.classic_rds_oracle.port  
}

output "rds_username" {
    value = aws_db_instance.classic_rds_oracle.username
  
}