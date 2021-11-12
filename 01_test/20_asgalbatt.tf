#Auto Scaling Group ALB Attachment
resource "aws_autoscaling_attachment" "zzaeha_asgalbatt" {
  autoscaling_group_name = aws_autoscaling_group.zzaeha_asg.id
  alb_target_group_arn = aws_lb_target_group.zzaeha_albtg.arn
}