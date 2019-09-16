#!/bin/sh

terraform init -input=false -no-color
terraform plan -input=false -no-color
