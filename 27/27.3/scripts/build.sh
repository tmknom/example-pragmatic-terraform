#!/bin/sh
set -x

if [[ ${CODEBUILD_WEBHOOK_TRIGGER} = 'branch/master' ]]; then
  ${CODEBUILD_SRC_DIR}/scripts/apply.sh
else
  ${CODEBUILD_SRC_DIR}/scripts/plan.sh
fi
