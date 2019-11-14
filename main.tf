
resource "aws_security_group" "Test_ONLY_secgrp_fdn_ports" {

  description      = "Allow inbound/outbound traffic"
  vpc_id           = "vpc-4ede7f37"
  name             = "Test-ONLY-secgrp-fdn"
 

egress{
    from_port         = "${var.Syslog_e_U[0]}"
    to_port           = "${var.Syslog_e_U[1]}"
    protocol          = "${var.Syslog_e_U[2]}"
    security_groups   = ["180019693407/sg-3ffa1d72"]
    description       = "${var.Syslog_e_U[3]}"
  }
# Nexus  
egress{
    cidr_blocks       = ["${var.provided_Nexus_IPs[0]}"]
    from_port         = "${var.Nexus_Jenkins[0]}"
    to_port           = "${var.Nexus_Jenkins[1]}"
    protocol          = "${var.Nexus_Jenkins[2]}"
    description       = "${var.Nexus_Jenkins[3]}"
  }   
  # Nexus
egress{
    from_port         = "${var.Nexus_Jenkins[0]}"
    to_port           = "${var.Nexus_Jenkins[1]}"
    protocol          = "${var.Nexus_Jenkins[2]}"
    security_groups   = ["180019693407/sg-02d994b42e9656739"]
    description       = "${var.Nexus_Jenkins[3]}"
  } 

  # Jenkins
  egress{
    from_port         = "${var.Nexus_Jenkins[0]}"
    to_port           = "${var.Nexus_Jenkins[1]}"
    protocol          = "${var.Nexus_Jenkins[2]}"
    security_groups   = ["180019693407/sg-06a3d6c1612799e58"]
    description       = "${var.Nexus_Jenkins[3]}"
  }  
# Smart DNS
  egress{
    from_port         = "${var.DNS_U[0]}"
    to_port           = "${var.DNS_U[1]}"
    protocol          = "${var.DNS_U[2]}"
    security_groups   = ["180019693407/sg-25ff3e56"]
    description       = "${var.DNS_U[3]}"
  }    
  egress{
    from_port         = "${var.DNS_T[0]}"
    to_port           = "${var.DNS_T[1]}"
    protocol          = "${var.DNS_T[2]}"
    security_groups   = ["180019693407/sg-25ff3e56"]
    description       = "${var.DNS_T[3]}"
  }   

# local security group
  egress{
    from_port         = "${var.DNS_U[0]}"
    to_port           = "${var.DNS_U[1]}"
    protocol          = "${var.DNS_U[2]}"
    security_groups   = ["sg-a5831dd3"]
    description       = "${var.DNS_U[3]}"
  }  

  egress{
    cidr_blocks       = ["${var.provided_Eg_syslogs_IPs[0]}"]
    from_port         = "${var.Syslog_e_T[0]}"
    to_port           = "${var.Syslog_e_T[1]}"
    protocol          = "${var.Syslog_e_T[2]}"
    description       = "${var.Syslog_e_T[3]}"
  } 
  egress{
    cidr_blocks       = ["${var.provided_Eg_syslogs_IPs[0]}"]
    from_port         = "${var.DNS_T[0]}"
    to_port           = "${var.DNS_T[1]}"
    protocol          = "${var.DNS_T[2]}"
    description       = "${var.DNS_T[3]}"
  } 
  egress{
    cidr_blocks       = ["${var.provided_Eg_syslogs_IPs[0]}"]
    from_port         = "${var.DNS_U[0]}"
    to_port           = "${var.DNS_U[1]}"
    protocol          = "${var.DNS_U[2]}"
    description       = "${var.DNS_U[3]}"
  }   
egress{
    cidr_blocks       = ["${var.provided_Eg_syslogs_IPs[1]}"]
    from_port         = "${var.Syslog_e_T[0]}"
    to_port           = "${var.Syslog_e_T[1]}"
    protocol          = "${var.Syslog_e_T[2]}"
    description       = "${var.Syslog_e_T[3]}"
  } 
egress{
    cidr_blocks       = ["${var.provided_Eg_syslogs_IPs[1]}"]
    from_port         = "${var.DNS_T[0]}"
    to_port           = "${var.DNS_T[1]}"
    protocol          = "${var.DNS_T[2]}"
    description       = "${var.DNS_T[3]}"
  } 
egress{
    cidr_blocks       = ["${var.provided_Eg_syslogs_IPs[1]}"]
    from_port         = "${var.DNS_U[0]}"
    to_port           = "${var.DNS_U[1]}"
    protocol          = "${var.DNS_U[2]}"
    description       = "${var.DNS_U[3]}"
  } 
#YUM
egress{
    from_port         = "${var.yum_80[0]}"
    to_port           = "${var.yum_80[1]}"
    protocol          = "${var.yum_80[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.yum_80[3]}"
  }
egress{
    from_port         = "${var.yum_5000_9000[0]}"
    to_port           = "${var.yum_5000_9000[1]}"
    protocol          = "${var.yum_5000_9000[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.yum_5000_9000[3]}"
  }  
# Chef
egress{
    from_port         = "${var.chef_443[0]}"
    to_port           = "${var.chef_443[1]}"
    protocol          = "${var.chef_443[2]}"
    security_groups   = ["180019693407/sg-77464f00"]
    description       = "${var.chef_443[3]}"
  }
egress{
    from_port         = "${var.chef_80[0]}"
    to_port           = "${var.chef_80[1]}"
    protocol          = "${var.chef_80[2]}"
    security_groups   = ["180019693407/sg-77464f00"]
    description       = "${var.chef_80[3]}"
  }
egress{
    from_port         = "${var.satellite_443[0]}"
    to_port           = "${var.satellite_443[1]}"
    protocol          = "${var.satellite_443[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_443[3]}"
  }
egress{
    from_port         = "${var.satellite_5000[0]}"
    to_port           = "${var.satellite_5000[1]}"
    protocol          = "${var.satellite_5000[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_5000[3]}"
  }
egress{
    from_port         = "${var.satellite_5647[0]}"
    to_port           = "${var.satellite_5647[1]}"
    protocol          = "${var.satellite_5647[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_5647[3]}"
  }
egress{
    from_port         = "${var.satellite_8000[0]}"
    to_port           = "${var.satellite_8000[1]}"
    protocol          = "${var.satellite_8000[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_8000[3]}"
  }
egress{
    from_port         = "${var.satellite_8140[0]}"
    to_port           = "${var.satellite_8140[1]}"
    protocol          = "${var.satellite_8140[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_8140[3]}"
  }
egress{
    from_port         = "${var.satellite_8443[0]}"
    to_port           = "${var.satellite_8443[1]}"
    protocol          = "${var.satellite_8443[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_8443[3]}"
  }
egress{
    from_port         = "${var.satellite_9090[0]}"
    to_port           = "${var.satellite_9090[1]}"
    protocol          = "${var.satellite_9090[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_9090[3]}"
  }
egress{
    from_port         = "${var.satellite_9083[0]}"
    to_port           = "${var.satellite_9083[1]}"
    protocol          = "${var.satellite_9083[2]}"
    security_groups   = ["180019693407/sg-7b36d40d"]
    description       = "${var.satellite_9083[3]}"
  }    
##################### AWS Endpoints ##########################
#logs  
egress{
    from_port         = "${var.Endpoint_T_443[0]}"
    to_port           = "${var.Endpoint_T_443[1]}"
    protocol          = "${var.Endpoint_T_443[2]}"
    security_groups   = ["sg-0449362b8d09c7d9e"]
    description       = "${var.Endpoint_T_443[3]}"
  } 
# kms   
egress{
    from_port         = "${var.Endpoint_T_443[0]}"
    to_port           = "${var.Endpoint_T_443[1]}"
    protocol          = "${var.Endpoint_T_443[2]}"
    security_groups   = ["sg-0d96b87d789ac64c5"]
    description       = "${var.Endpoint_T_443[3]}"
  }


  tags = {
    name              = "Test-ONLY-secgrp-fdn"
    Name              = "Test-ONLY-secgrp-fdn"
    application_id    = "ITA"
    environment       = "dev"
    termination_date  = "NONE"
    created_by        = "rmashrouteh@dtcc.com"
    stack_name        = "using TF to create Security Groups"
    description       = "creating new security groups to replace dtcc_admin group"
    data_class        = "YELLOW"
  }
}
