#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
aws s3 cp s3://dct-aws-cloud-labs/ami-test.txt /var/www/html/index.html
