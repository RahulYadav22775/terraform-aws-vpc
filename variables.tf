variable "cidr_block" {
   type = string
}

variable "enable_dns_hostnames" {
    default = true
}

#optinal
variable "common_tags" {
    default = {}
}

#optional
variable "vpc_tags" {
    default = {}

}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list

    validation {
        
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please enter only two valid public  cidr_blocks"
    }
}


variable "public_subnet_tags" {
    default = {}
}


variable "private_subnet_cidrs" {
    type = list

    validation {
        
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please enter only two valid private   cidr_blocks"
    }
}

variable "private_subnet_tags" {
    default = {}
}


variable "database_subnet_cidrs" {
    type = list

    validation {
        
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please enter only two valid database   cidr_blocks"
    }
}

variable "database_subnet_tags" {
    default = {}
}

variable "db_subnet_group_tags" {
    default = {}
}

variable "nat_tags" {

       default = {
        
       }
    }


variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_peering_required" {
   type = bool
   default = false
}


variable "vpc_peering_tags" {
    default = {}
}