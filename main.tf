####AWS Oracle RDS resource configuration details 

resource "aws_db_instance" "classic_rds_oracle" {
    identifier = var.identifier
    db_name = var.db_name
    engine = var.engine
    engine_version = var.engine_version
    instance_class = var.instance_class
    storage_type = var.storage_type
    allocated_storage = var.allocated_storage
    port = var.port
    license_model = var.license_model
    character_set_name = var.character_set_name
    username = var.username
    password = var.password
    parameter_group_name = var.parameter_group_name
    availability_zone = var.availability_zone

    #vpc_security_group_ids = ["sg-0cbe5cbbee329d4a5"]
    vpc_security_group_ids = var.vpc_security_group_ids

    publicly_accessible = true
    deletion_protection = false
    skip_final_snapshot = true

    auto_minor_version_upgrade = false
    allow_major_version_upgrade = false
    apply_immediately = true
    
    performance_insights_enabled = false
    #performance_insights_kms_key_id = ""
    #performance_insights_retention_period = ""

    #snapshot_identifier = ""
    #enabled_cloudwatch_logs_exports = ""
    backup_retention_period = var.backup_retention_period

    tags = {
      name = "Oracle Classic RDS Instance"
    }
    

  
}