output "alb_dns_name" {
  value       = aws_lb.myapp.dns_name
  description = "The domain name of the load balancer"
}
