#!/bin/sh

MESSAGE=$(git log ${CODEBUILD_SOURCE_VERSION} -1 --pretty=format:"%s")
CODEBUILD_SOURCE_VERSION=$(echo ${MESSAGE} | cut -f4 -d' ' | sed 's/#/pr\//')
terraform init -input=false -no-color
terraform apply -input=false -no-color -auto-approve | \
tfnotify --config ${CODEBUILD_SRC_DIR}/tfnotify.yml apply --message "$(date)"
