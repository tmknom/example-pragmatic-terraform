#!/bin/sh

terraform init -input=false -no-color
terraform apply -input=false -no-color -auto-approve
