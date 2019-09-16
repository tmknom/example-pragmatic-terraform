resource "aws_ecs_task_definition" "example" {
  family                = "example"
  memory                = "512"
  container_definitions = jsonencode(yamldecode(file("./cd.yaml")))
}
