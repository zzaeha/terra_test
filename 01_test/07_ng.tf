#EIP 생성
resource "aws_eip" "zzaeha_eip_ng"{
  vpc = true
}

#NAT Gateway 생성
resource "aws_nat_gateway" "zzaeha_ng"{
  allocation_id = aws_eip.zzaeha_eip_ng.id
  subnet_id = aws_subnet.zzaeha_pub_a.id
  tags = {
    "Name" = "zzaeha-ng"
  }

  #Meta Argument - 위의 블록 구성 전에 생성이 필요하다고 선언
  depends_on = [
    aws_internet_gateway.zzaeha_ig
  ]
}