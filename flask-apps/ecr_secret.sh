#!/bin/bash
export AWS_ACCOUNT="816731947491"
export AWS_REGION="eu-west-2"
kubectl create secret docker-registry regcred \
  --docker-server=${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password)
