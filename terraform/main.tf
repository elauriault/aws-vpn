provider "aws" {
  region = "ca-central-1"
}

resource "aws_default_vpc" "default" {
}

resource "aws_vpn_gateway" "default" {
  vpc_id = aws_default_vpc.default.id
}

resource "aws_customer_gateway" "default" {
  bgp_asn    = 65000
  ip_address = var.my_ip
  type       = "ipsec.1"
}

resource "aws_vpn_connection" "default" {
  vpn_gateway_id      = aws_vpn_gateway.default.id
  customer_gateway_id = aws_customer_gateway.default.id
  type                = "ipsec.1"
  static_routes_only  = true
}

resource "aws_route" "r" {
  route_table_id         = aws_default_vpc.default.main_route_table_id
  destination_cidr_block = "192.168.0.0/16"
  gateway_id             = aws_vpn_gateway.default.id
}

resource "aws_vpn_connection_route" "home" {
  destination_cidr_block = "192.168.0.0/16"
  vpn_connection_id      = aws_vpn_connection.default.id
}
