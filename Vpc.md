Objectives
After completing this lab, you should be able to do the following:

Create an Amazon EC2 Auto Scaling group and register it with an Application Load Balancer spanning across multiple Availability Zones.
Create a highly available Amazon Aurora database (DB) cluster.
Modify an Aurora DB cluster to be highly available.
Modify an Amazon Virtual Private Cloud (Amazon VPC) configuration to be highly available using redundant NAT gateways.
Confirmed your database can perform a failover to a read replica instance

### Architecture Diagram of Project

![image](https://github.com/user-attachments/assets/3ce55b2e-3496-4f45-ab2d-4a19aa7c323f)

```
#!/bin/bash
#yum -y update
dnf update -y
dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel

# Install and enable AWS Systems Manager Agent
cd /tmp
systemctl enable amazon-ssm-agent
systemctl start amazon-ssm-agent

# Download Inventory App Lab files
wget https://ap-southeast-2-tcprod.s3.ap-southeast-2.amazonaws.com/courses/ILT-TF-200-ARCHIT/v7.8.1.prod-29f8a5ae/lab-4-HA/scripts/inventory-app.zip
unzip inventory-app.zip -d /var/www/html/

# Download and install the AWS SDK for PHP
wget https://github.com/aws/aws-sdk-php/releases/download/3.295.2/aws.zip
unzip aws -d /var/www/html
unzip /var/www/html/aws.zip -d /var/www/html/

# Load Amazon Aurora DB connection details from AWS CloudFormation
un="dbadmin"
pw="lab-password"
ep="inventory-cluster.cluster-cm7fjvyku99k.ap-southeast-2.rds.amazonaws.com"
db="inventory"

# Populate PHP app settings with DB info
sed -i "s/DBENDPOINT/$ep/g" /var/www/html/get-parameters.php
sed -i "s/DBNAME/$db/g" /var/www/html/get-parameters.php
sed -i "s/DBUSERNAME/$un/g" /var/www/html/get-parameters.php
sed -i "s/DBPASSWORD/$pw/g" /var/www/html/get-parameters.php

# Turn on web server
systemctl start httpd.service
systemctl enable httpd.service
```
