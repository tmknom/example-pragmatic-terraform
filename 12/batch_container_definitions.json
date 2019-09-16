[
  {
    "name": "alpine",
    "image": "alpine:latest",
    "essential": true,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "batch",
        "awslogs-group": "/ecs-scheduled-tasks/example"
      }
    },
    "secrets": [
      {
        "name": "DB_USERNAME",
        "valueFrom": "/db/username"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "/db/password"
      }
    ],
    "command" : ["/usr/bin/env"]
  }
]
