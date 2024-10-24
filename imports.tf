##################################################################################
# IMPORTS

# Note: at the end of the import process, this file can be deleted as it is no longer needed.
##################################################################################

import {
  to = module.main.aws_vpc.this[0]
  id = "vpc-01a1759cef5ce4b52" #VPC
}

import {
  to = module.main.aws_subnet.public[0]
  id = "subnet-0185cc4dda3b45550" #PublicSubnet1
}

import {
  to = module.main.aws_subnet.public[1]
  id = "subnet-0da9d8ea8a1284712" #PublicSubnet2
}

import {
  to = module.main.aws_internet_gateway.this[0]
  id = "igw-028809c706856ca1c" #InternetGateway
}

import {
  to = module.main.aws_route.public_internet_gateway[0]
  id = "rtb-02ef275b724da0c7e_0.0.0.0/0" #DefaultPublicRoute
}

import {
  to = module.main.aws_route_table.public[0]
  id = "rtb-02ef275b724da0c7e" #PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[0]
  id = "subnet-0185cc4dda3b45550/rtb-02ef275b724da0c7e" #PublicSubnet1/PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[1]
  id = "subnet-0da9d8ea8a1284712/rtb-02ef275b724da0c7e" #PublicSubnet2/PublicRouteTable
}

import {
  to = aws_security_group.ingress
  id = "sg-055403c3a284b8aed" #NoIngressSecurityGroup
}