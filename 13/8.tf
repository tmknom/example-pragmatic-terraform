resource "aws_elasticache_replication_group" "example" {
  replication_group_id          = "example"
  replication_group_description = "Cluster Disabled"
  engine                        = "redis"
  engine_version                = "5.0.4"
  number_cache_clusters         = 3
  node_type                     = "cache.m3.medium"
  snapshot_window               = "09:10-10:10"
  snapshot_retention_limit      = 7
  maintenance_window            = "mon:10:40-mon:11:40"
  automatic_failover_enabled    = true
  port                          = 6379
  apply_immediately             = false
  security_group_ids            = [module.redis_sg.security_group_id]
  parameter_group_name          = aws_elasticache_parameter_group.example.name
  subnet_group_name             = aws_elasticache_subnet_group.example.name
}
