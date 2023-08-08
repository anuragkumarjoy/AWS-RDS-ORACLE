
#####Define AWS region where you want to setup Oracle RDS instance 
variable "aws_region" {
    type = string
    default = "us-east-1"
    description = "aws region name "
}

####Define the RDS instance identifier name 
variable "identifier" {
    type = string
    default = "ncrdsprod"
    description = "Oracle RDS instance identifier name "
}


####Define oracle database name 
variable "db_name" {
  type        = string
  default     = "ORCL"
  description = "Oracle database database."
}

##Define Oracle RDS database  edition 
variable "engine" {
    type = string
    default = "oracle-ee"
    description = "Oracle RDS edition "
}


##Define oracle database version 
variable "engine_version" {
    type = string
    default = "19.0.0.0.ru-2023-04.rur-2023-04.r1"
    description = "https://docs.aws.amazon.com/AmazonRDS/latest/OracleReleaseNotes/oracle-version-19-0.html"
}


###Define RDS instance class 
variable "instance_class" {
    type = string
    default = "db.t3.medium"
    description = "RDS instance class"  
}

###Defne storage type 
variable "storage_type" {
    type = string
    default = "gp2"
    description = "RDS instance storage type "
}


###Define allocated storage to instance class 
variable "allocated_storage" {
    type = number
    default = 20
    description = "RDS instance storage "
}


###Define oracle database port 
variable "port" {
    type = number
    default = 1521
    description = "oracle database port "
}

###Define RDS Licence Model
variable "license_model" {
  type        = string
  default     = "bring-your-own-license"
  description = "Oracle RDS license model."
}

##Define Oracle database charecterset
variable "character_set_name" {
  type        = string
  default     = "AL32UTF8"
  description = "https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.OracleCharacterSets.html"
}


##define RDS username
variable "username" {
    type = string
    default = "orcl_admin"
    description = "define username "
} 

###Define RDS daabase password 
variable "password" {
  type = string
  default = "orcl12345"
}


##define oracle parameter group 
variable "parameter_group_name" {
  type        = string
  default = "oracle-prod-group"
  description = "RDS parameter group."
}


###Define db subnet group
variable "db_subnet_group_name" {
  type    = string
  default = "vpc-7135571a"
  description = "RDS db subnet group."
}


#define vpc security id 
variable "vpc_security_group_ids" {
    #type = string
    default = ["sg-0cbe5cbbee329d4a5"]
    description = "vpc security id "
  
}

##Define backup retetion 
variable "backup_retention_period" {
  type        = number
  default     = 0
  description = "RDS retention backup period"
}

###Define auto minor database version upgrade
variable "auto_minor_version_upgrade" {
  type        = bool
  default     = true
  description = "RDS auto minor database version update."
}


##Define RDS instance multi AZ 
variable "multi_az" {
  type        = bool
  default     = false
  description = "RDS Multi az deployment."
}

###Define RDS availability zone 
variable "availability_zone" {
  type        = string
  default     = "us-east-1a"
  description = "RDS availability zonce."
}


###Define chnages apply immediatly
variable "apply_immediately" {
  type        = bool
  default     = false
  description = "Apply changes immediately."
}


##Define RDS performance insight 
variable "performance_insights_enabled" {
  type        = bool
  default     = false
  description = "Enable RDS performance insights."
}

###Define perfornace insight data retention 
variable "performance_insights_retention_period" {
  type        = number
  default     = 0
  description = "RDS performance insights retention."
}


###Define Monitoring interval 
variable "monitoring_interval" {
  type        = number
  default     = 0
  description = "Monitoring interval."
}


