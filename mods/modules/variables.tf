variable "identifier" {
    default     = "mydb-rds"
    description = "Identifier for your DB"
}

variable "storage" {
    default     = "10"
    description = "Storage size in GB"
}

variable "engine" {
    default     = "mysql"
    description = "Engine type, here it is mysql"
}

variable "engine_version" {
    description = "Engine version"

    default = {
        mysql    = "8.0.28"
    }
}

variable "instance_class" {
    default     = "db.t3.micro"
    description = "Instance class"
}

variable "db_name" {
    default     = "test_db"
    description = "db name"
}

variable "username" {
    default     = "root"
    description = "Username"
}

variable "password" {
    default = "root12345"
    description = "password"
}
