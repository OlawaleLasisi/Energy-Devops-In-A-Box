#!/bin/bash
ENV=$1
terraform -chdir=iac/environments/$ENV init
terraform -chdir=iac/environments/$ENV apply -auto-approve
databricks jobs create --json-file ci-cd/databricks/job_config.json
