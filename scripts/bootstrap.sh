#!/bin/bash
for ENV in dev staging production; do
  terraform -chdir=iac/environments/$ENV init
  terraform -chdir=iac/environments/$ENV apply -auto-approve
done
