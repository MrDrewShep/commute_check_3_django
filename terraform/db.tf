# TODO See which of these are necessary, and which can be removed.

resource "aws_db_instance" "commute-check-3" {
    identifier = "commute-check-3"
    allocated_storage = 20
    allow_major_version_upgrade = "false"
    apply_immediately = "false"
    auto_minor_version_upgrade = "true"
    backup_retention_period = 7
    ca_cert_identifier = "rds-ca-2019"
    db_subnet_group_name = "default-vpc-c0cb9eba"
    delete_automated_backups = "true"
    engine = "postgres"
    engine_version = "12.3"
    instance_class = "db.t3.micro"
    license_model = "postgresql-license"
    max_allocated_storage = 21
    multi_az = "false"
    password = var.initial_db_password
    port = 5432
    publicly_accessible = "false"
    skip_final_snapshot = "true"
    storage_encrypted = "true"
    storage_type = "gp2"
    username = "postgres"
    tags = {
        Name = "commute-check-v3-db"
    }
}


    # vpc_security_group_ids = [
    # "sg-35794966"
    # ]