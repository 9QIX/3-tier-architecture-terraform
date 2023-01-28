region = "ap-southeast-1"

vpc_name             = "vpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
vpc_public_subnets   = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc_private_subnets  = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
vpc_database_subnets = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
vpc_tags             = { "created-by" = "terraform" }

asg_sg_name                             = "asg-sg"
asg_sg_description                      = "asg-sg"
asg_sg_tags                             = { "Name" = "asg-sg", "created-by" = "terraform" }
asg_name                                = "asg"
asg_min_size                            = 0
asg_max_size                            = 2
asg_desired_capacity                    = 2
asg_wait_for_capacity_timeout           = 0
asg_health_check_type                   = "EC2"
asg_launch_template_name                = "lt"
asg_launch_template_description         = "lt"
asg_update_default_version              = true
asg_image_id                            = "ami-0753e0e42b20e96e3"
asg_instance_type                       = "t3.micro"
asg_ebs_optimized                       = true
asg_enable_monitoring                   = true
asg_create_iam_instance_profile         = true
asg_iam_role_name                       = "asg-iam-role"
asg_iam_role_path                       = "/ec2/"
asg_iam_role_description                = "asg-iam-role"
asg_iam_role_tags                       = { "Name" = "asg-iam-role", "created-by" = "terraform" }
asg_block_device_mappings_volume_size_0 = 20
asg_block_device_mappings_volume_size_1 = 30
asg_instance_tags                       = { "Name" = "asg-instance", "created-by" = "terraform" }
asg_volume_tags                         = { "Name" = "asg-volume", "created-by" = "terraform" }
asg_tags                                = { "Name" = "asg", "created-by" = "terraform" }

alb_sg_name                    = "alb-sg"
alb_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
alb_sg_description             = "alb-sg"
alb_sg_tags                    = { "Name" = "alb-sg", "created-by" = "terraform" }
alb_name                       = "alb"
alb_http_tcp_listeners_port    = 80
alb_target_group_name          = "alb-tg"
alb_target_groups_backend_port = 80
alb_tags                       = { "Name" = "alb", "created-by" = "terraform" }

rds_sg_name                               = "rds-sg"
rds_sg_description                        = "rds-sg"
rds_sg_tags                               = { "Name" = "rds-sg", "created-by" = "terraform" }
rds_identifier                            = "rds"
rds_mysql_engine                          = "mysql"
rds_engine_version                        = "8.0.27"
rds_family                                = "mysql8.0"
rds_major_engine_version                  = "8.0"
rds_instance_class                        = "db.t2.small"
rds_allocated_storage                     = 20
rds_max_allocated_storage                 = 100
rds_db_name                               = "mysql_tier3"
rds_username                              = "user_tier3"
rds_port                                  = 3306
rds_multi_az                              = false
rds_maintenance_window                    = "Mon:00:00-Mon:03:00"
rds_backup_window                         = "03:00-06:00"
rds_enabled_cloudwatch_logs_exports       = ["general"]
rds_create_cloudwatch_log_group           = true
rds_backup_retention_period               = 0
rds_skip_final_snapshot                   = true
rds_deletion_protection                   = false
rds_performance_insights_enabled          = false
rds_performance_insights_retention_period = 7
rds_create_monitoring_role                = true
rds_monitoring_interval                   = 60
rds_tags                                  = { "Name" = "rds", "created-by" = "terraform" }
rds_db_instance_tags                      = { "Name" = "rds-instance", "created-by" = "terraform" }
rds_db_option_group_tags                  = { "Name" = "rds-option-group", "created-by" = "terraform" }
rds_db_parameter_group_tags               = { "Name" = "rds-db-parameter-group", "created-by" = "terraform" }
rds_db_subnet_group_tags                  = { "Name" = "rds-db-subnet-group", "created-by" = "terraform" }
