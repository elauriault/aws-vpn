output "tunnel1_address" {
  value = join("", aws_vpn_connection.default.*.tunnel1_address)
}

output "tunnel1_cgw_inside_address" {
  value = join("", aws_vpn_connection.default.*.tunnel1_cgw_inside_address)
}

output "tunnel1_vgw_inside_address" {
  value = join("", aws_vpn_connection.default.*.tunnel1_vgw_inside_address)
}

output "tunnel1_preshared_key" {
  value = join("", aws_vpn_connection.default.*.tunnel1_preshared_key)
}

output "tunnel2_address" {
  value = join("", aws_vpn_connection.default.*.tunnel2_address)
}

output "tunnel2_cgw_inside_address" {
  value = join("", aws_vpn_connection.default.*.tunnel2_cgw_inside_address)
}

output "tunnel2_vgw_inside_address" {
  value = join("", aws_vpn_connection.default.*.tunnel2_vgw_inside_address)
}

output "tunnel2_preshared_key" {
  value = join("", aws_vpn_connection.default.*.tunnel2_preshared_key)
}
