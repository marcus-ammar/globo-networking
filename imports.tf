##################################################################################
# IMPORTS

# Note: at the end of the import process, this file can be deleted as it is no longer needed.
##################################################################################

import {
  to = module.main.aws_vpc.this[0]
  id = "vpc-02b935925415800bb" #VPC
}

import {
  to = module.main.aws_subnet.public[0]
  id = "subnet-0ba05bfa2ef328e19" #PublicSubnet1
}

import {
  to = module.main.aws_subnet.public[1]
  id = "subnet-020e6c0b9a949e36e" #PublicSubnet2
}

import {
  to = module.main.aws_internet_gateway.this[0]
  id = "igw-03d0b707d76494989" #InternetGateway
}

import {
  to = module.main.aws_route.public_internet_gateway[0]
  id = "rtb-0c5213ba018a67cae_0.0.0.0/0" #DefaultPublicRoute
}

import {
  to = module.main.aws_route_table.public[0]
  id = "rtb-0c5213ba018a67cae" #PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[0]
  id = "subnet-0ba05bfa2ef328e19/rtb-0c5213ba018a67cae" #PublicSubnet1/PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[1]
  id = "subnet-020e6c0b9a949e36e/rtb-0c5213ba018a67cae" #PublicSubnet2/PublicRouteTable
}

import {
  to = aws_security_group.ingress
  id = "sg-073ddf1ae0f0183ac" #NoIngressSecurityGroup
}