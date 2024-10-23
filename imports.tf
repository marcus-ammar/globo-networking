##################################################################################
# IMPORTS

# Note: at the end of the import process, this file can be deleted as it is no longer needed.
##################################################################################

import {
  to = module.main.aws_vpc.this[0]
  id = "vpc-0a33715cfea16edce" #VPC
}

import {
  to = module.main.aws_subnet.public[0]
  id = "subnet-0b93b5aae36565fc4" #PublicSubnet1
}

import {
  to = module.main.aws_subnet.public[1]
  id = "subnet-013a8c596f8d942ef" #PublicSubnet2
}

import {
  to = module.main.aws_internet_gateway.this[0]
  id = "igw-0fbec0c2617118f24" #InternetGateway
}

import {
  to = module.main.aws_route.public_internet_gateway[0]
  id = "rtb-090520898fefa2bb7_0.0.0.0/0" #DefaultPublicRoute
}

import {
  to = module.main.aws_route_table.public[0]
  id = "rtb-090520898fefa2bb7" #PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[0]
  id = "subnet-0b93b5aae36565fc4/rtb-090520898fefa2bb7" #PublicSubnet1/PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[1]
  id = "subnet-013a8c596f8d942ef/rtb-090520898fefa2bb7" #PublicSubnet2/PublicRouteTable
}

import {
  to = aws_security_group.ingress
  id = "sg-03bfef60f4e23f6a3" #NoIngressSecurityGroup
}