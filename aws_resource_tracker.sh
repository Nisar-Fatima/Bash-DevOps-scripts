#!/bin/bash

# Author : Nisar Fatima
# Date   : 17 FEB
# Version: v4

# Strict mode
set -euo pipefail

# Debug mode OFF
set +x

echo "======================================="
echo "        AWS RESOURCE REPORT"
echo "======================================="
echo "Date: $(date)"
echo

# List S3 Buckets
echo "----- Listing S3 Buckets -----"
aws s3 ls
echo

# List EC2 Instance IDs (Clean Output)
echo "----- Listing EC2 Instance IDs ------"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo

# List Lambda Functions
echo "----- Listing Lambda Functions -----"
aws lambda list-functions
echo

# List IAM Users
echo "----- Listing IAM Users -----"
aws iam list-users
echo

echo "======================================="
echo "     AWS Resource Listing Completed"
