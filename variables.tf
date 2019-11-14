provider "aws" {
  region = "us-east-1"
}


variable "provided_Eg_syslogs_IPs" {
  type = "list"
  default = ["172.28.33.107/32","172.21.161.107/32"]
}

variable "provided_Nexus_IPs" {
  type = "list"
  default = ["10.168.224.92/32"]
}

variable "Nexus_Jenkins" {
  type = "list"
  default = [443, 443, "TCP", "Nexus and Jenkins"]
}

variable "Syslog_e_U" {
  type = "list"
  default = [514, 514, "UDP", "Syslog"]
}
variable "Syslog_e_T" {
  type = "list"
  default = [514, 514, "TCP", "Syslog"]
}
variable "DNS_T" {
  type = "list"
  default = [53, 53, "TCP", "DNS"]
}
variable "DNS_U" {
  type = "list"
  default = [53, 53, "UDP", "DNS"]
}
variable "Endpoint_T_443" {
  type = "list"
  default = [443, 443, "TCP", "AWS Endpoints"]
}

# YUM
variable yum_80 {
type = "list"
default = [80, 80, "TCP", "Yum"]
}
variable yum_443 {
type = "list"
default = [443, 443, "TCP", "Yum"]
}
variable yum_5000_9000 {
type = "list"
default = [5000, 9000, "TCP", "Yum"]
}

# Chef
variable chef_443 {
type = "list"
default = [443, 443, "TCP", "HTTPS Chef"]
}
variable chef_80 {
type = "list"
default = [80, 80, "TCP", "HTTP Chef"]
}

# SATELLITE
variable satellite_80 {
type = "list"
default = [80, 80, "TCP", "Satellite"]
}
variable satellite_443 {
type = "list"
default = [443, 443, "TCP", "Satellite"]
}
variable satellite_5000 {
type = "list"
default = [5000, 5000, "TCP", "Satellite"]
}
variable satellite_5647 {
type = "list"
default = [5647, 5647, "TCP", "Satellite"]
}
variable satellite_8000 {
type = "list"
default = [8000, 8000, "TCP", "Satellite"]
}
variable satellite_8140 {
type = "list"
default = [8140, 8140, "TCP", "Satellite"]
}
variable satellite_8443 {
type = "list"
default = [8443, 8443, "TCP", "Satellite"]
}
variable satellite_9090 {
type = "list"
default = [9090, 9090, "TCP", "Satellite"]
}
variable satellite_9083 {
type = "list"
default = [9083, 9083, "TCP", "Satellite"]
}
