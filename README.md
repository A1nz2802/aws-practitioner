# Table of Contents
- [Cloud Computing and AWS](#cloud-computing-and-aws)
  * [Cloud Computing vs Traditional IT](#cloud-computing-vs-traditional-it)
  * [There are 3 types of cloud computing model](#there-are-3-types-of-cloud-computing-model)
  * [There are 4 types of cloud deployment](#there-are-4-types-of-cloud-deployment)
  * [Fundamentals of pricing](#fundamentals-of-pricing)
  * [The AWS Global Infrastructure is made up of](#the-aws-global-infrastructure-is-made-up-of)
  * [The AWS shared responsability model defines custormer/AWS responsabilities](#the-aws-shared-responsability-model-defines-custormer-aws-responsabilities)
  * [The 6 advantages of cloud](#the-6-advantages-of-cloud)
- [AWS Identity and Access Managment](#aws-identity-and-access-managment)
  * [Users, Groups, Roles and Policies](#users--groups--roles-and-policies)
  * [IAM Best Practices](#iam-best-practices)
- [AWS Compute Services](#aws-compute-services)
  * [Benefits of Amazon EC2](#benefits-of-amazon-ec2)
  * [User Data & Metadata](#user-data---metadata)
  * [Access Keys](#access-keys)
  * [AWS Batch](#aws-batch)
  * [Amazon LightSail](#amazon-lightsail)
  * [Amazon Elastic Container Service (ECS)](#amazon-elastic-container-service--ecs-)
- [AWS Storage Services](#aws-storage-services)
  * [Amazon Elastic Block Store (EBS)](#amazon-elastic-block-store--ebs-)
  * [Amazon EBS Snapshots and DLM (Data Lifecycle Manager DLM)](#amazon-ebs-snapshots-and-dlm--data-lifecycle-manager-dlm-)
  * [EBS vs Instance Store](#ebs-vs-instance-store)
  * [Amazon Machine Images (AMI)](#amazon-machine-images--ami-)
  * [Amazon Elastic File System (EFS)](#amazon-elastic-file-system--efs-)
  * [Amazon Simple Storage (S3)](#amazon-simple-storage--s3-)
  * [Amazon S3 Storage Classes](#amazon-s3-storage-classes)
  * [S3 Versioning, Replication, and Lifecycle Rules](#s3-versioning--replication--and-lifecycle-rules)
  * [Amazon S3 Glacier](#amazon-s3-glacier)
  * [AWS Storage Gateway](#aws-storage-gateway)
- [DNS, Elastic Load Balancing, and Auto Scaling](#dns--elastic-load-balancing--and-auto-scaling)
  * [DNS and Amazon Route 53](#dns-and-amazon-route-53)
  * [Elasticity: Scaling Up vs Out](#elasticity--scaling-up-vs-out)
  * [Amazon EC2 Auto Scaling](#amazon-ec2-auto-scaling)
  * [Load Balancing and High Availability](#load-balancing-and-high-availability)
  * [Amazon Elastic Load Balancer (ELB)](#amazon-elastic-load-balancer--elb-)
  * [Elastically Scale the Application](#elastically-scale-the-application)
  * [Scaling Policies](#scaling-policies)
- [Application Services](#application-services)
  * [Serverless Services](#serverless-services)
  * [AWS Lambda Functions](#aws-lambda-functions)
  * [Application Integration Services](#application-integration-services)
  * [Amazon EventBridge/CloudWatch Events](#amazon-eventbridge-cloudwatch-events)
  * [Amazon API Gateway](#amazon-api-gateway)
- [Amazon VPC, Networking, and Hybrid](#amazon-vpc--networking--and-hybrid)
  * [Amazon Virtual Private Cloud (VPC)](#amazon-virtual-private-cloud--vpc-)
  * [Create a custom VPC](#create-a-custom-vpc)
  * [Security Groups and Network ACLs](#security-groups-and-network-acls)
  * [Public, Private and Elastic IP Address](#public--private-and-elastic-ip-address)
  * [NAT Gateways and NAT Instances](#nat-gateways-and-nat-instances)
  * [VPC Peering](#vpc-peering)
  * [Amazon VPN and AWS Direct Connect](#amazon-vpn-and-aws-direct-connect)
  * [AWS Transit Gateway](#aws-transit-gateway)
  * [AWS Outposts](#aws-outposts)
- [Deployment and Automation](#deployment-and-automation)
  * [Caching and Amazon CloudFront](#caching-and-amazon-cloudfront)
  * [AWS Global Accelerator](#aws-global-accelerator)
  * [AWS CloudFormation](#aws-cloudformation)
  * [AWS Cloud Development Kit (CDK)](#aws-cloud-development-kit--cdk-)
  * [AWS Elastic Beanstalk](#aws-elastic-beanstalk)
  * [AWS Developer Tools](#aws-developer-tools)
  * [AWS X-Ray](#aws-x-ray)
  * [AWS OpsWorks](#aws-opsworks)
- [Databases and Analytics](#databases-and-analytics)
  * [Types of Database](#types-of-database)
  * [Amazon Relational Database Service (RDS)](#amazon-relational-database-service--rds-)
  * [Amazon Aurora](#amazon-aurora)
  * [Amazon DynamoDB](#amazon-dynamodb)
  * [Amazon RedShift](#amazon-redshift)
  * [Amazon Elastic Map Reduce (EMR)](#amazon-elastic-map-reduce--emr-)
  * [Amazon ElastiCache](#amazon-elasticache)
  * [Amazon Athena and AWS Glue](#amazon-athena-and-aws-glue)
  * [Amazon Kinesis](#amazon-kinesis)
  * [Other Databases and Analitycs Services](#other-databases-and-analitycs-services)
- [Management and Governance](#management-and-governance)
  * [AWS Organizations](#aws-organizations)
  * [AWS Control Tower](#aws-control-tower)
  * [AWS Systems Manager](#aws-systems-manager)
  * [AWS Service Catalog](#aws-service-catalog)
  * [AWS Config](#aws-config)
  * [AWS Trusted Advisor](#aws-trusted-advisor)
  * [AWS Health API and Dashboards](#aws-health-api-and-dashboards)
- [AWS Cloud Security and Identity](#aws-cloud-security-and-identity)
  * [Identity Providers and Federation](#identity-providers-and-federation)
  * [AWS Directory Services](#aws-directory-services)
  * [Protecting Secrets](#protecting-secrets)
  * [Encryption](#encryption)
  * [Logging and Auditing](#logging-and-auditing)
  * [Detect and Response](#detect-and-response)
  * [Firewalls and DDoS Protection](#firewalls-and-ddos-protection)
  * [Compliance Services](#compliance-services)
  * [Security Management and Support](#security-management-and-support)
  * [Penetration Testing](#penetration-testing)
- [Architecting for the Cloud](#architecting-for-the-cloud)
  * [AWS Well Architected](#aws-well-architected)
  * [AWS Well-Architected Framework](#aws-well-architected-framework)
- [Accounts, Billing and Support](#accounts--billing-and-support)
  * [AWS Pricing Fundamentals](#aws-pricing-fundamentals)
  * [Amazon EC2 Pricing Options](#amazon-ec2-pricing-options)
  * [Amazon EC2 Pricing Use Cases](#amazon-ec2-pricing-use-cases)
  * [Pricing for other AWS Services](#pricing-for-other-aws-services)
  * [AWS Support Plans](#aws-support-plans)
  * [Consolidated Billing](#consolidated-billing)
  * [AWS Budgets](#aws-budgets)
  * [AWS Cost Management Tools](#aws-cost-management-tools)

## Cloud Computing and AWS

### Cloud Computing vs Traditional IT

| **Cloud Computing**     | **Traditional IT**                              |
|-------------------------|-------------------------------------------------|
| On-demand, self service | Requires human involvement                      |
| Broad network access    | Internal accessibility, limited public presence |
| Resourse Pooling        | Single-tenant, can be virtualized               |
| Rapid elasticity        | Limited scalability                             |
| Measured service        | Usage is not tipically measured                 |

### There are 3 types of cloud computing model

- Infrastructure as a service (IaaS): Managed up to the OS
- Platform as a service (PaaS): Managed up to the code
- Software as a service (SaaS): Pure consumption model 

### There are 4 types of cloud deployment

- Public Cloud or simple "Cloud" - e.g. AWS, Azure, Google Cloud Platform
- Hybrid Cloud, mixture of public and private clouds
- Private Cloud (on-premise), managed in your own data center, e.g. Hyper-V, OpenStack, VMware
- Multicloud, use private/public clouds from multiple providers 

### Fundamentals of pricing

- Compute: CPU/RAM and duration
- Storage: quantity of data stored or allocated
- Outbound data transfer: data leaving an AWS Region

### The AWS Global Infrastructure is made up of

- AWS Regions
  - A region is a geographical area
  - Each region consists of 2 or more availability zones
  - Isolated from other AWS Regions
- Availability Zones
  - Availability zones are physically separate and isolated from each other
  - AZ span one or more data centers
  - Each AZ is designed as an indepent failure zone
- Local zones
  - AWS Local Zones place compute, storage, database, and other select AWS services closer to end-users
  - Extension of an AWS Region where you can run your latency sensitive applications.
- Edge Locations and Regional Edge Caches
  - Edge locations are Content Delivery Network (CDN) endpoints for CloudFront
  - There are many more edge locations than regions
  - Regional Edge Caches sit between your CloudFront Origin servers and the Edge Locations
  - A Regional Edge Cache has a larger cache-width than each of the individual Edge Locations

<img src="https://i.imgur.com/tbnnlad.png" alt="1" width="100%"/>

### The AWS shared responsability model defines custormer/AWS responsabilities

- AWS are responsible for "Security **of** the cloud"
  - AWS is responsible for protecting the infrastructure that runs all of the service offered in the AWS Cloud
  - This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services
- Customers are responsibles for "Security **in** the cloud"
  - For EC2 this includes network level security, operating system patches and updates, IAM user access managment, and client and server-side data encryption

<img src="https://i.imgur.com/TxrGIeK.png" alt="1" width="100%"/>

<img src="https://i.imgur.com/Xfq8oNN.png" alt="1" width="100%"/>

### The 6 advantages of cloud

- Trade capital expense for variable expense
- Benefit from massive economies of scale
- Scale guessing about capacity
- Increase speed and agility
- Stop spending money money running and maintaining data centers
- Go global in minutes

## AWS Identity and Access Managment

AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources.
You use IAM to control who is authenticated (signed in) and authorized (has permissions) to use resources.

IAM can be used to manage:

- Users.
- Groups.
- Access policies.
- Roles.
- User credentials.
- User password policies.
- Multi-factor authentication (MFA).
- API keys for programmatic access (CLI).

<img src="https://i.imgur.com/JWSaDi5.png" alt="1" width="100%"/>

### Users, Groups, Roles and Policies

- IAM User: Is an entity that represents a person or service
- Groups: Groups are collections of users and have policies attached to them, use groups to assign permissions to users.
- Roles: Roles are created and then “assumed” by trusted entities and define a set of permissions for making AWS service requests.
- Policies: Policies are documents that define permissions and can be applied to users, groups, and roles. Policy documents are written in JSON (key value pair that consists of an attribute and a value).

<img src="https://digitalcloud.training/wp-content/uploads/2022/02/iam-users-groups-roles-policies.png" alt="2" width="100%"/>

### IAM Best Practices

- Lock away the AWS root user access keys.
- Create individual IAM users.
- Use AWS defined policies to assign permissions whenever possible.
- Use groups to assign permissions to IAM users.
- Grant least privilege.
- Use access levels to review IAM permissions.
- Configure a strong password policy for users.
- Enable MFA.
- Use roles for applications that run on AWS EC2 instances.
- Delegate by using roles instead of sharing credentials.
- Rotate credentials regularly.
- Remove unnecessary credentials.
- Use policy conditions for extra security.
- Monitor activity in your AWS account.

## AWS Compute Services

- Amazon Elastic Compute Cloud (Amazon EC2) is a web service with which you can run virtual server “instances” in the cloud.
- Amazon EC2 instances can run the Windows, Linux, or MacOS operating systems.
- The EC2 simple web service interface allows you to obtain and configure capacity with minimal friction.
- EC2 is designed to make web-scale cloud computing easier for developers.
- Amazon EC2 changes the economics of computing by allowing you to pay only for capacity that you use.
- Amazon EC2 provides developers the tools to build failure resilient applications and isolate them from common failure scenarios.

<img src="https://i.imgur.com/H5MaQWO.png" alt="3" width="100%"/>

### Benefits of Amazon EC2

- Elastic computing: easily launch hundreds to thousands of EC2 instances within minutes
- Completed control: you control the EC2 instances with full root/administrative access
- Flexible: choice of instance types, operating systems, and software packages
- Reliable: EC2 offers very high levels of availability and instances can be rapidly commissioned and replaced
- Secure: fully integrated with Amazon VPC and sewcurity features
- Inexpensive: low cost, pay for what you use

### User Data & Metadata

- User Data gives you the ability to run commands when the system is starting
- Metadata can return information about the instance that's recorded locally

<img src="https://i.imgur.com/pEREcsS.png" alt="4" width="100%"/>
<img src="https://i.imgur.com/OfpqWLs.png" alt="5" width="100%"/>

### Access Keys

- Access Keys are configured on the EC2 instances
- This is **secret information that is stored on the file system of the instance** (it's not a very secure way of storing that information)
- Access Keys will pick up whatever permissions the policy allows that user

<img src="https://i.imgur.com/vgRCR3k.png" alt="5" width="100%"/>

- Instance profile is a way that we can connect an IAM role to our EC2 instance. That role is then assumed by the EC2 instance and will gain access to whathever permissions the policy attached to the roles provides. The great thing about this is there's **no credentials stored on the EC2 instance**

<img src="https://i.imgur.com/HoWvQTf.png" alt="5" width="100%"/>

### AWS Batch 

- AWS Batch is a service that we can use to run what's called a batch workload on AWS

<img src="https://miro.medium.com/max/1200/0*LhyLjfye1TUn341e" alt="5" width="90%"/>

### Amazon LightSail

- Amazon LightSail is another compute service, and it's very similar to EC2. This service gives you the ability to run virtual servers in the cloud just like EC2 does. The difference is that the interface for it is a lot simpler to use for those who don't really have a strong background in technology. **AWS call it the simple cloud server**
- Low cost and ideal for users with less technical expertise
- It allows compute storage, networking services, virtual servers, database services, and it does support load balancing as well
- You can connect in using the Secure Shell Protocol or the Remote Desktop Protocol for Windows instances. Can access Amazon VPC.

<img src="https://i.imgur.com/bJtK82h.png" alt="5" width="50%"/>

### Amazon Elastic Container Service (ECS)

- ECS is a highly scalable, high-performance container orchestration service on AWS
- In ECS we call it a **task** rather than a container, but it's essentially the same thing
- Each **task** has something called a **task definition**. The task definition describes how the task should be configured and where to get the image from that's the actual code which the container runs
- The **registry** is where the image is stored
- A **service** is a way that we can maintain a desired count of tasks. We can create a service and define that we always want to have four tasks running, if one fails, then it just creates another one for us. Where do these actual tasks run? They run on container instances (essentially running on EC2 instances)

<img src="https://i.imgur.com/va96r2E.png" alt="5" width="100%"/>

- There are actually two different types of ECS: Firstly, we have what's called the **EC2 launch type**. With the EC2 launch type, what's happening is you're actually provisioning EC2 instances and then running your containers on top of those instances, that means that you are responsible for managing the EC2 instances on which your containers run. You're charged per running instances, and you can integrate into storage services like EFS and EBS which will talk about a bit later on.

- On the other hand, we have a type of ECS called **Fargate**. With Fargate, AWS is managing the cluster for you. **Fargate is essentially a serverless implementation**, that means you don't have to manage the underlying infrastructure

<img src="https://i.imgur.com/kCqkIhS.png" alt="5" width="100%"/>

## AWS Storage Services

- **Block Storage System**: Is a block-based storage system, a hard drive that's connected to your computer is a good example of a block-based storage sytem. The OS reads and write at the block level

- **File Storage System**: With a file-based storage system we're able to actually mount a file system over a network

- **Object Storage System**: User uploads objects using a web browser and they upload them to a container (like a bucket into which you can put your objects). There's no hierarchy of objects and it uses a REST API. Objects can be files, videos, images etc. Object-based storage are very scalable and very low cost

<img src="https://i.imgur.com/UoaJu5c.png" alt="5" width="100%"/>

<img src="https://i.imgur.com/rRmaBCt.png" alt="5" width="100%"/>

### Amazon Elastic Block Store (EBS)

- EBS is the storage system that's used by Amazon EC2 and the EBS volume is where OS and any data is stored persistently
- Each EC2 instance can have one or more EBS volume attached to it, but **you can't actually attach multiple intances to an individual volume** (exists EBS multi-attach and it's under some very specific constraints)
- EBS volume live within an availability zone
- The EBS volume data persists independently of the life of the instance
- EBS volumes must be in the **same AZ** as the instances they are attached to
- **Root EBS** volumes **are deleted** on termination by default

<img src="https://i.imgur.com/enljJRB.png" alt="5" width="100%"/>

### Amazon EBS Snapshots and DLM (Data Lifecycle Manager DLM)

- When we take a snapshot of out EBS volume, we're essentially capturing a point in time state of the data on that volume
- We can take multiple snapshots of our EBS volume, and  each of these is an incremental copy
- DLM automates the creation, retention and deletion of EBS snapshots and EBS - backed AMI's
- DLM helps with the following:
  - Protectcs valuable data by enforcing a regular backup schedule
  - Create standardized AMIs that can be refreshed at regular intervals 
  - Retain backups as required by auditors or internal compliance 
  - Reduce storage costs by deleting outdated backups
  - Create disaster recovery backup policies that back up data to isolated accounts

<img src="https://i.imgur.com/1KO9AsQ.png" alt="5" width="100%"/>

### EBS vs Instance Store

- Instance Store volumes are **physically attached** to the host
- EBS volumes are **attached over a network** and they are **persistent storage**
- Instance Store are **very high performance**, but they're **non-persistent**

<img src="https://i.imgur.com/wVW9aPK.png" alt="5" width="100%"/>

### Amazon Machine Images (AMI)

- An AMI provides the information required to launch an instance
- An AMI includes the following:
  - One or more EBS snapshots, or, for instance-store-backed AMIs, **a template for the root volume** of the instance (for example, an OS, an aplication server, and aplications)
  - Launch permissions that control which AWS accounts can use the AMI to launch instances
  - A block device mapping that specific the volumes to attach to the instance when it's launched
- AMIs come in three main categories:
  - Community AMIs: free to use, generally you just select the operating system you want
  - AWS Marketplace AMIs: pay to use, generally come packaged with aditional, licensed software
  - My AMIs: AMI's that you create yourself

### Amazon Elastic File System (EFS)

- EFS is something that we can attach multiple instances to
- You can event connect instances from different VPC's as well
- EFS uses something called the **NFS Protocol**
- It's actually limited to Linux instances only

<img src="https://i.imgur.com/cTtbHbJ.png" alt="5" width="100%"/>

### Amazon Simple Storage (S3)

- S3 service is an **object-based storage system**. We can connected to it over the internet using our browsers and the HTTP protocol
- In S3, we can create a container called a **bucket**. The bucket is the container into which we can then upload our objects, our files into the bucket.
- An objects consists of:
  - Key: simply a name of file or name of the object
  - Version ID: shows you a version if you have multiple versions of your objects
  - Value: actual data itself
  - Metadata: additional information that's associated with the object
  - Subresources: we can attach additional configuration
  - Access control information

- You can store any type of file in S3
- Files can be anywhere from 0 bytes to 5TB
- There is unlimited storage available
- S3 is a universal namespace so bucket names must be unique globally
- However, you create your buckets within a REGION
- It is a best practice to create buckets in regions that are physically closet to your users to reduce latency

<img src="https://i.imgur.com/MyfJyE5.png" alt="5" width="100%"/>

<img src="https://i.imgur.com/p2PZjgR.png" alt="5" width="100%"/>

### Amazon S3 Storage Classes

When we store our objects in S3 buckets, we can choose different storage classes and this determines certain characteristics of how the data is stored and it also determines the price point, how much we pay

| **Availability**                                   | **Durability**                                                                           |
|----------------------------------------------------|------------------------------------------------------------------------------------------|
| Measures how readily available the service is      | Measures the likelihood of data loss                                                     |
| Measured as a percentage                           | All storage classes offer 99.999999999% durability                                       |
| S3 availability SLA varies between storage classes | This means that if you store 100 billion objects in S3, you will lose one object at most |

- Glacier and Glacier Deep Archive are used for archiving data and it's where you're keeping your data for a long time
- First byte latency just means how quickly can you get access to your data
- Intelligence tiering moves data intelligently between different storage classes for you

<img src="https://i.imgur.com/aNZykhB.png" alt="5" width="100%"/>

### S3 Versioning, Replication, and Lifecycle Rules

- Versioning:
  - Versioning is a means of keeping multiple variants of an object in the same bucket
  - Use versioning to preserve, retrieve, and restore every version of every object stored in your Amazon S3 bucket

- Replication:
  - S3 replication is where we're replicating the data from one bucket to another
  - The buckets can algo be in different accounts as well, you can still replicate data between different accounts if you want too
  - **Replication relies on versioning**, so you must **enable versioning** before you're able to use replication

- Lifecycle rules:
  - Another way we can work with objects is to use lifecycle rules, you can configure them in the console and that's essentially moving your data between different storage classes

<img src="https://i.imgur.com/GCIqgKz.png" alt="5" width="100%"/>

### Amazon S3 Glacier

- Extremely low cost and you pay only for what you need with no commitments of upfront fees
- Two classes Glacier and Glacier Deep Archive
- Three options for access to archives, listed in the table below:

|                                 | Expedited     | Standard   | Bulk       |
|---------------------------------|---------------|------------|------------|
| Data access time (Glacier)      | 1-5 minutes   | 3-5 hours  | 5-12 hours |
| Data access time (Deep Archive) | N/A           | 12 hours   | 48 hours   |

- S3 Object Lock
  - Store objects using a write-once-read-many (WORM) model
  - Prevent objects from being deleted or overwritten for a fixed time or indefinitely
- S3 Glacier Vault Lock
  - Also used to enforce a WORM model
  - Can apply a policy and lock the policy from future edits
  - Use for compliance objectives and data retention

### AWS Storage Gateway

- Hybrid cloud storage service
- Access cloud storage from on-premises applications
- Enables access to proprietary object storage (S3) using standard protocols
- Use cases:
  - Moving backups to the cloud
  - Using on-premises file shares backed by cloud storage
  - Low latency access to data in AWS for on-premises applications
  - Disaster recovery

<img src="https://i.imgur.com/d8Eq7zx.png" alt="5" width="100%"/>

## DNS, Elastic Load Balancing, and Auto Scaling

### DNS and Amazon Route 53 

<img src="https://i.imgur.com/sPenpsX.png" alt="5" width="100%"/>

| **Routing Policy** |                                 **What it does**                                     |
|--------------------|--------------------------------------------------------------------------------------|
| Routing            | Policy What it does                                                                  |
| Simple             | Simple DNS response providing the IP address associated with a name                  |
| Failover           | If primary is down (based on health checks), routes to secondary destination         |
| Geolocation        | Uses geographic location you’re in (e.g. Europe) to route you to the closest r egion |
| Geoproximity       | Routes you to the closest region within a geographic area                            |
| Latency            | Directs you based on the lowest latency route to resources                           |
| Multivalue answer  | Returns several IP addresses and functions as a basic load balancer                  |
| Weighted           | Uses the relative weights assigned to resources to determine which to route to       |

<img src="https://i.imgur.com/zjRjyza.png" alt="5" width="100%"/>

### Elasticity: Scaling Up vs Out

- Scaling up (vertical scaling): Scaling up means that we add more hardware. We have more memory, more storage space, more network bandwidth, etc. Essentially, we're adding resources to that instance. How do you do this in Amazon resources? For example, with EC2, we might have a T2 instance, so that's a certain instance type, has a certain amount of CPU and RAM. Now **we can always change the instance type** and maybe we move it to C5, now we have an instance with more resources. **It's the same instance we just change the instance type**

<img src="https://i.imgur.com/fjADYkP.png" alt="5" width="70%"/>

<img src="https://i.imgur.com/wu36xS3.png" alt="5" width="50%"/>

- Scaling out (horizontal scaling): With horizontal scaling, we simply add more instances. Scalling out gives you more **resiliency**

<img src="https://i.imgur.com/bW67Apm.png" alt="5" width="70%"/>

<img src="https://i.imgur.com/ITPCZFx.png" alt="5" width="50%"/>

### Amazon EC2 Auto Scaling

- Amazon EC2 Auto Scaling is a service that will dynamically scale our EC2 instances horizontally, scaling out by launching and terminating EC2 instances
- Provides elasticity and scalability
- Responds to EC2 status checks and CloudWatch metrics
- Can scale based on demand (performance) or on a schedule
- Scaling policies define how to respond to changes in demand

<img src="https://i.imgur.com/OB2g0Gb.png" alt="5" width="100%"/>

### Load Balancing and High Availability

- Fault tolerance is where we have **the ability to recover in the case of something like a component failure**. AWS provides a lot of fault tolerance built-in to their infrastructure and we're able to spread the load between different availability zones so that we have fault tolerance across the AZ because each one is one or more data centers.

<img src="https://live.staticflickr.com/65535/52274804469_0f1547971d_o.png" alt="5" width="100%"/>

- If we add in auto scaling as well, then we get an even better solution because that failed web server, can **now actually be replaced by auto scaling**
- We regularly use auto scaling and load balancing together to make sure that we have the right number of EC2 instances that we can recover from failure and that we can direct the incoming connections across all of out instances

<img src="https://live.staticflickr.com/65535/52274577621_5ac5595a63_o.png" alt="5" width="100%"/>

### Amazon Elastic Load Balancer (ELB)

<img src="https://live.staticflickr.com/65535/52273696337_c2c2834733_o.png" alt="5" width="100%"/>

<img src="https://live.staticflickr.com/65535/52275258200_d3a2ae8c91_o.png" alt="5" width="100%"/>

### Elastically Scale the Application

<img src="https://i.imgur.com/bxvUsDz.png" alt="5" width="100%"/>

### Scaling Policies

- Target Tracking: Attempts to keep the group at or close to the metric
- Simple Scaling: Adjust group size based on a metric
- Step Scaling: Adjust group size based on a metric – adjustments vary based on the size of the alarm breach
- Scheduled Scaling – Adjust the group size at a specific time

## Application Services

### Serverless Services

- With serverless there are no instances to manage
- You don’t need to provision hardware
- There is no management of operating systems or software
- Capacity provisioning and patching is handled automatically
- Provides automatic scaling and high availability
- Can be very cheap!
- Serverless services include:
  - AWS Lambda
  - AWS Fargate
  - Amazon EventBridge
  - AWS Step Functions
  - Amazon SQS
  - Amazon SNS
  - Amazon API Gateway
  - Amazon S3
  - Amazon DynamoDB

<img src="https://i.imgur.com/69w41cn.png" alt="5" width="100%"/>

### AWS Lambda Functions

- AWS Lambda executes code only when needed and scales automatically
- You pay only for the compute time you consume (you pay nothing when your code is not running)
- Benefits of AWS Lambda:
- No servers to manage
- Continuous scaling
- Millisecond billing
- Integrates with almost all other AWS services
- Primary use cases for AWS Lambda:
  - Data processing
  - Real-time file processing
  - Real-time stream processing
  - Build serverless backends for web, mobile, IOT, and 3rd party API requests

<img src="https://i.imgur.com/YRIIlRT.png" alt="5" width="100%"/>

### Application Integration Services

- Amazon Simple Queue Service (SQS)
  - SQS offers a reliable, highly-scalable, hosted queue for storing messages in transit between computers
  - SQS is used for distributed/decoupled applications
  - SQS uses a message-oriented API
  - SQS uses pull based (polling) not push based

<img src="https://i.imgur.com/rVVPife.png" alt="5" width="100%"/>

- Amazon MQ
  - Message broker service
  - Similar to Amazon SQS
  - Based on Apache Active MQ and RabbitMQ
  - Used when customers require industry standard APIs and protocols
  - Useful when migrating existing queue-based applications into the cloud

- Amazon Simple Notification Service (SNS)
  - Publisher/subscriber model
  - Amazon SNS is used for building and integrating looselycoupled, distributed applications
  - Provides instantaneous, push-based delivery (no polling)
  - Uses simple APIs and easy integration with applications
  - Offered under an inexpensive, pay-as-you-go model with no up-front costs

<img src="https://i.imgur.com/d5MuFS6.png" alt="AWS SNS" width="100%"/>

- AWS Step Functions
  - AWS Step Functions makes it easy to coordinate the components of distributed applications as a series of steps in a visual workflow
  - You can quickly build and run state machines to execute the steps of your application in a reliable and scalable fashion

- AWS Simple Workflow Service (SWF)
  - Amazon Simple Workflow Service (SWF) is a web service that makes it easy to coordinate work across distributed application components
  - Create distributed asynchronous systems as workflows
  - Best suited for human-enabled workflows like an order fulfilment system or for procedural requests
  - AWS recommends that for new applications customers consider Step Functions instead of SWF


<img src="https://i.imgur.com/zeg2qFx.png" alt="5" width="100%"/>

### Amazon EventBridge/CloudWatch Events 

- Serverless event bus
- Used for building event-driven architectures
- Ingests data and routes it to target AWS services

<img src="https://i.imgur.com/88wkOcH.png" alt="5" width="100%"/>

### Amazon API Gateway

- Publish APIs on AWS
- Create RESTful and Websocket APIs
- Fully managed service
- Forward connections to AWS services and on-premises applications

<img src="https://i.imgur.com/APf9zh1.png" alt="5" width="100%"/>

## Amazon VPC, Networking, and Hybrid

### Amazon Virtual Private Cloud (VPC)

- A virtual private cloud (VPC) is a virtual network dedicated to your AWS account
- Analogous to having your own DC inside AWS
- It is logically isolated from other virtual networks in the AWS Cloud
- Provides complete control over the virtual networking environment including selection of IP ranges, creation of subnets, and configuration of route tables and gateways
- You can launch your AWS resources, such as Amazon EC2 instances, into your VPC

<img src="https://i.imgur.com/mEV0v6u.png" alt="5" width="100%"/>

- When you create a VPC, you must specify a range of IPv4 addresses for the VPC in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16
- A VPC spans all the Availability Zones in the region
- You have full control over who has access to the AWS resources inside your VPC
- By default you can create up to 5 VPCs per region
- A default VPC is created in each region with a subnet in each AZ

<img src="https://i.imgur.com/eFcRyvy.png" alt="5" width="100%"/>

<img src="https://i.imgur.com/DrOF4UY.png" alt="5" width="100%"/>

### Create a custom VPC

<img src="https://i.imgur.com/ExRRKgA.png" alt="5" width="100%"/>

### Security Groups and Network ACLs

- A **firewall** is essentially a security device wich screens incoming and outgoing connections and checks whether they're going to be allowed or disallowed based on some rules that we can define
- Network ACLs is Network Access Control List. ACLs is that list of the ports and protocols that you're going to allow

<img src="https://i.imgur.com/T2yQjKI.png" alt="5" width="100%"/>

<img src="https://i.imgur.com/UD1B1tM.png" alt="5" width="100%"/>

### Public, Private and Elastic IP Address

| Name                        | Description                                                   |
|-----------------------------|---------------------------------------------------------------|
| Public IP Address           | - Lost when the instance is stoppedas                         |
|                             | - Used in Public Subnets                                      |
|                             | - No charge                                                   |
|                             | - Associated with a private IP address on the instance        |
|                             | - Cannot be moved between instances                           |
| Private IP Address          | - Retained when the instance is stopped                       |
|                             | - Used in Public and Private Subnets                          |
| Elastic IP Address          | - Static Public IP address                                    |
|                             | - You are charged if not used                                 |
|                             | - Associated with a private IP address on the instance        |
|                             | - Can be moved between instances and Elastic Network Adapters |

### NAT Gateways and NAT Instances

- NAT means Network Address Translation

| **NAT Instance**                                                                                | **NAT Gateway**                                                                     |
|-------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| Managed by you (e.g. software updates)                                                          | Managed by AWS                                                                      |
| Scale up (instance type) manually and use enhanced networking                                   | Elastic scalability up to 45 Gbps                                                   |
| No high availability – scripted/auto-scaled HA possible using multiple NATs in multiple subnets | Provides automatic high availability within an AZ and can be placed in multiple AZs |

<img src="https://i.imgur.com/2ez99PB.png" alt="5" width="100%"/>

### VPC Peering

- We use VPC Peering to connect our VPCs in the same or in different accounts,in the same or different regions, and we want to connect them using private IP addresses.

<img src="https://i.imgur.com/HbIYdFI.png" alt="5" width="100%"/>

### Amazon VPN and AWS Direct Connect

In many circumstances, we're going to want to connect our on-premises data centers to the public cloud, to our AWS VPC. We might also do that for our company offices as well. So there's two ways that we can do this, and that's an Amazon virtual private network, VPN, and also an AWS Direct Connect connection.

- AWS Site-to-Site VPN
  - You can establish a virtual private network connection and this is an encrypted connection that's going over the internet. One of the problems with that is you are subject to any bandwidth issues, any latency or delay issues on the internet.

<img src="https://i.imgur.com/ktnuosw.png" alt="5" width="100%"/>

- AWS VPN CloudHub
  - It's essentially a series of different site-to-site connections. We have customer gateways in multiple offices or data center environments and we connect them in a hub-and-spoke model to our virtual private gateway on the AWS side. In this model, the customer offices can also communicate to each othe via AWS.

<img src="https://i.imgur.com/mawI9tq.png" alt="5" width="100%"/>

- AWS Direct Connect

<img src="https://i.imgur.com/YQY6gdH.png" alt="5" width="100%"/>

### AWS Transit Gateway

Earlier on, we looked at VPC peering and you saw that we had lots of different connections goins between our four VPC, imagine if you have many VPCs, then it's going to get very complicated using VPC Peering to set up internal routing.

You can think of the transit gateway as a network hub that interconnects your VPCs and your on-premises network

<img src="https://i.imgur.com/b9k6usV.png" alt="5" width="100%"/>

### AWS Outposts

Sometimes customers want to actually run some of the AWS services in their on premises data center, Outposts allows them to do that.

- Services you can run on AWS Outposts include:
  - Amazon EC2
  - Amazon EBS
  - Amazon S3
  - Amazon VPC
  - Amazon ECS/EKS
  - Amazon RDS
  - Amazon EMR

<img src="https://i.imgur.com/VG3xSlI.png" alt="5" width="100%"/>

## Deployment and Automation

### Caching and Amazon CloudFront

Amazon CloudFront is a service we can use to improve performance for accessing content by caching it around the world. Maybe your website content is sitting in S3 or it's sitting on an EC2 Web server, that content then gets pushed to something called an **edge location**. There's lots of edge locations around the world and they're part of the AWS global infrastructure and that means that your users can now connect to the nearest edge location.

<img src="https://i.imgur.com/WNWv6ua.png" alt="5" width="100%"/>

### AWS Global Accelerator

AWS Global Accelerator is another service that we can use to improve the performance of access to our AWS resources. Just like with CloudFront, the AWS Global Accelerator service leverages these edge locations that are around the world

- AWS Global Accelerator vs CloudFront
  - Both use the AWS global network and edge locations
  - CloudFront improves performance for cacheable content and dynamic content
  - GA improves performance for a wide range of applications over TCP and UDP
  - GA proxies connections to applications in one or more AWS Regions
  - GA provides failover between AWS Regions

<img src="https://i.imgur.com/m1CpY2X.png" alt="5" width="100%"/>

### AWS CloudFormation

AWS CloudFormation is a service that we can use to deploy infrastructure on AWS using code that's written in a template file.

- Infrastructure is provisioned consistently, with fewer mistakes (human error)
- Less time and effort than configuring resources manually
- Free to use (you're only charged for the resources provisioned)
- A template is a YAML or JSON template used to describe the endstate of the infrastructure you are either provisioning or changing
- CloudFormation creates a Stack based on the template
- Can easily rollback and delete the entire stack as well

<img src="https://i.imgur.com/qqE6VvE.png" alt="5" width="100%"/>

### AWS Cloud Development Kit (CDK)

- Open-source software development framework to define your cloud application resources using familiar programming languages
- Preconfigures cloud resources with proven defaults using constructs
- Provisions your resources using AWS CloudFormation
- Enables you to model application infrastructure using TypeScript, Python, Java, and .NET
- Use existing IDE, testing tools, and workflow patterns

<img src="https://i.imgur.com/STuD3Cu.png" alt="5"/>

### AWS Elastic Beanstalk

The AWS Elastic Beanstalk service is a Platform as a Service solution, so a PaaS solution. So that means a platform is provisioned and managed for you onto which you can then deploy code for a Web application.

- Supports Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker web applications
- Integrates with VPC
- Integrates with IAM
- Can provision most database instances
- Allows full control of the underlying resources
- Code is deployed using a WAR file or Git repository

<img src="https://i.imgur.com/2pG9rWs.png" alt="5"/>

| **CloudFormation**                           | **AWS Elastic Beanstalk**                                                                |
|----------------------------------------------|------------------------------------------------------------------------------------------|
| "Template-driven provisioning"               | “Web apps made easy"                                                                     |
| Deploys infrastructure using code            | Deploys applications on EC2 (PaaS)                                                       |
| Can be used to deploy almost any AWS service | Deploys web applications based on Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker |
| Uses JSON or YAML template files             | Uses ZIP or WAR files (or Git)                                                           |
| Similar to Terraform                         | Similar to Google App Engine                                                             |

### AWS Developer Tools

The developer tools are used in continuous integration and continuous delivery.

<img src="https://i.imgur.com/3MKUVBf.png" alt="5"/>

<img src="https://i.imgur.com/jbGDdNB.png" alt="5"/>

<img src="https://i.imgur.com/xKDRult.png" alt="5"/>

<img src="https://i.imgur.com/DvQHWF2.png" alt="5"/>

### AWS X-Ray

- AWS X-Ray helps developers analyze and debug production,
distributed applications, such as those built using a microservices
architecture

- AWS X-Ray supports applications running on:
  - Amazon EC2
  - Amazon ECS
  - AWS Lambda
  - AWS Elastic Beanstalk
  - Need to integrate the X-Ray SDK with your application and install the X-Ray agent

<img src="https://i.imgur.com/mNmLoyR.png" alt="5"/>

### AWS OpsWorks

<img src="https://i.imgur.com/7woevpY.png" alt="5"/>

## Databases and Analytics

### Types of Database

- **Relational vs Non-Relational**

| **Relational**                                 | **Non-Relational**                                                                     |
|------------------------------------------------|----------------------------------------------------------------------------------------|
| Organized by tables, rows and columns          | Varied data storage models                                                             |
| Rigid schema (SQL)                             | Flexible schema (NoSQL) – data stored in key-value pairs, columns, documents or graphs |
| Rules enforced within database                 | Rules can be defined in application code (outside database)                            |
| Typically scaled vertically                    | Scales horizontally                                                                    |
| Supports complex queries and joins             | Unstructured, simple language that supports any kind of schema                         |
| Amazon RDS, Oracle, MySQL, IBM DB2, PostgreSQL | Amazon DynamoDB, MongoDB, Redis, Neo4j                                                 |

- **Operational vs Analytical**

| **Operational/Transactional**                                                                                                | **Analytical**                                                                                           |
|------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|
| Online Transaction Processing (OLTP)                                                                                         | Online Analytics Processing (OLAP) – the source data comes from OLTP DBs                                 |
| Production DBs that process transactions. E.g. adding customer records, checking stock availability (INSERT, UPDATE, DELETE) | Data warehouse. Typically, separated from the customer facing DBs. Data is extracted for decision making |
| Short transactions and simple queries                                                                                        | Long transactions and complex queries                                                                    |
| Relational examples: Amazon RDS, Oracle, IBM DB2, MySQL                                                                      | Relational examples: Amazon RedShift, Teradata, HP Vertica                                               |
| Non-relational examples: MongoDB, Cassandra, Neo4j, HBase                                                                    | Non-relational examples: Amazon EMR, MapReduce                                                           |

- **Deployment options for databases on AWS**

<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky"><span style="font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;Data Store</span></th>
    <th class="tg-0pky"><span style="font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;Use Case&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Database on EC2</td>
    <td class="tg-0pky">- Need full control over instance and database<br>- Third-party database engine (not available in RDS)</td>
  </tr>
  <tr>
    <td class="tg-0pky">Amazon RDS</td>
    <td class="tg-0pky">- Need traditional relational database<br>- e.g. Oracle, PostgreSQL, Microsoft SQL, MariaDB, MySQL<br>- Data is well-formed and structured</td>
  </tr>
  <tr>
    <td class="tg-0pky">Amazon DynamoDB</td>
    <td class="tg-0pky">- NoSQL database<br>- In-memory performance<br>- High I/O needs<br>- Dynamic scaling</td>
  </tr>
  <tr>
    <td class="tg-0pky">Amazon ElastiCache</td>
    <td class="tg-0pky">- Fast temporary storage for small amounts of data<br>- In-memory database</td>
  </tr>
  <tr>
    <td class="tg-0pky">Amazon EMR</td>
    <td class="tg-0pky">- Analytics workloads using the Hadoop framework</td>
  </tr>
</tbody>
</table>

### Amazon Relational Database Service (RDS)

- RDS is a **managed relational database**. It runs on EC2 instance and that means you need to choose your instace type to determine the perfomance characteristics for your database, the cpu, the memory and the storage.

- RDS supports the following database engines:
  - Amazon Aurora
  - MySQL
  - MariaDB
  - Oracle
  - Microsoft SQL Server
  - PostgreSQL

**Note: If the database you need is not on the list, you can't use RDS. You have to install it on EC2.**

- Scaling on RDS:
  - With RDS, we can scale a couple of different ways. **Scaling up or scaling vertically is where we change out instance type**, so here we've moved from a db.m4.large with two CPUs and 8GB RAM up to the M4, which has more processing power and more RAM associated with it.
  - We can also scale out for **some specific performance characteristics** and we can also implement **disaster recovery** so we can have some high availability **fault tolerance** and disaster recovery for our applications.
**References**

<img src="https://i.imgur.com/HZNutZj.png" alt="5"/>

- Recap:
  - RDS uses EC2 instances, so you must choose an instance family/type
  - Relational databases are known as Structured Query Language (SQL) databases
  - RDS is an Online Transaction Processing (OLTP) type of database
  - Easy to setup, highly available, fault tolerant, and scalable
  - Common use cases include online stores and banking systems
  - You can encrypt your Amazon RDS instances and snapshots at rest by enabling the encryption option for your Amazon RDS DB instanc (during creation)
  - Encryption uses AWS Key Management Service (KMS)
  - Scales up by increasing instance size (compute and storage)
  - Read replicas option for read heavy workloads (scales out for reads/queries only)
  - Disaster recovery with Multi-AZ option

### Amazon Aurora

Amazon Aurora is a proprietary database engine created by AWS.

- Amazon Aurora is an AWS database offering in the RDS family
- Amazon Aurora is a MySQL and PostgreSQL-compatible relational database built for the cloud
- Amazon Aurora is up to five times faster than standard MySQL databases and three times faster than standard PostgreSQL databases
- Amazon Aurora features a distributed, fault-tolerant, self-healing storage system that auto-scales up to 64TB per database instance 

<img src="https://i.imgur.com/gXQjtZh.png" alt="5"/>

| **Aurora Feature**               |                      **Benefit**                                                                                                                                |
|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| High performance and scalability | Offers high performance, self-healing storage that scales up to 64TB, point-in-time recovery and continuous backup to S3                                        |
| DB compatibility                 | Compatible with existing MySQL and PostgreSQL open source databases                                                                                             |
| Aurora Replicas                  | In-region read scaling and failover target – up to 15 (can use Auto Scaling)                                                                                    |
| MySQL Read Replicas              | Cross-region cluster with read scaling and failover target – up to 5 (each can have up to 15 Aurora Replicas)                                                   |
| Global Database                  | Cross-region cluster with read scaling (fast replication / low latency reads). Can remove secondary and promote                                                 |
| Multi-Master                     | Scales out writes within a region. In preview currently and will not appear on the exam                                                                         |
| Serverless                       | On-demand, autoscaling configuration for Amazon Aurora - does not support read replicas or public IPs (can only access through VPC or Direct Connect - not VPN) |

### Amazon DynamoDB

- Fully managed NoSQL database service
- Key/value store and document store
- It is a non-relational, key-value type of database
- Fully serverless service
- Push button scaling

| **DynamoDB Feature**                               | **Benefit**                                                                                 |
|----------------------------------------------------|---------------------------------------------------------------------------------------------|
| Serverless                                         | Fully managed, fault tolerant, service                                                      |
| Highly available                                   | 99.99% availability SLA – 99.999% for Global Tables!                                        |
| NoSQL type of database with Name / Value structure | Flexible schema, good for when data is not well structured or unpredictable                 |
| Horizontal scaling                                 | Seamless scalability to any scale with push button scaling or Auto Scaling                  |
| DynamoDB Accelerator (DAX)                         | Fully managed in-memory cache for DynamoDB that increases performance (microsecond latency) |
| Backup                                             | Point-in-time recovery down to the second in last 35 days; On-demand backup and restore     |
| Global Tables                                      | Fully managed multi-region, multi-master solution                                           |

### Amazon RedShift

- Amazon Redshift is a fast, fully managed data warehouse that makes it simple and cost-effective to analyze all your data using standard SQL and existing Business Intelligence (BI) tools
- RedShift is a SQL based data warehouse used for analytics applications
- RedShift is a relational database that is used for Online Analytics Processing (OLAP) use cases
- RedShift uses Amazon EC2 instances, so you must choose an instance family/type
- RedShift always keeps three copies of your data
- RedShift provides continuous/incremental backups

<img src="https://i.imgur.com/mvdUgvH.png" alt="5"/>

### Amazon Elastic Map Reduce (EMR)

- Managed cluster platform that simplifies running big data frameworks including Apache Hadoop and Apache Spark
- Used for processing data for analytics and business intelligence
- Can also be used for transforming and moving large amounts of data
- Performs extract, transform, and load (ETL) functions

<img src="https://i.imgur.com/Woq5Z6J.png" alt="5"/>

### Amazon ElastiCache

- Fully managed implementations Redis and Memcached
- ElastiCache is a key/value store
- In-memory database offering high performance and low latency
- Can be put in front of databases such as RDS and DynamoDB
- ElastiCache nodes run on Amazon EC2 instances, so you must choose an instance family/type

<img src="https://i.imgur.com/sBsKSrb.png" alt="5"/>

|      **Use Case**         |                                         **Benefit**                                                                                                                         |
|---------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Web session store         | In cases with load-balanced web servers, store web session information in Redis so if a server is lost, the session info is not lost, and another web server can pick it up |
| Database caching          | Use Memcached in front of AWS RDS to cache popular queries to offload work from RDS and return results faster to users                                                      |
| Leaderboards              | Use Redis to provide a live leaderboard for millions of users of your mobile app                                                                                            |
| Streaming data dashboards | Provide a landing spot for streaming sensor data on the factory floor, providing live real-time dashboard displays                                                          |

### Amazon Athena and AWS Glue

- Athena queries data in S3 using SQL
- Can be connected to other data sources with Lambda
- Data can be in CSV, TSV, JSON, Parquet and ORC formats
- Uses a managed Data Catalog (AWS Glue) to store information and schemas about the databases and tables

<img src="https://i.imgur.com/2xfeSRx.png" alt="5"/>

- Fully managed extract, transform and load (ETL) service
- Used for preparing data for analytics
- AWS Glue runs the ETL jobs on a fully managed, scale-out Apache Spark environment
- Works with data lakes (e.g. data on S3), data warehouses (including RedShift), and data stores (including RDS or EC2 databases)

### Amazon Kinesis

Amazon Kinesis is a service that's made up of multiple different services, but they're all associated with **streaming data**.

Examples of streaming data use cases include:
- Purchases from online stores
- Stock prices
- Game data (statistics and results as the gamer plays)
- Social network data
- Geospatial data (think uber.com)
- IoT sensor data

<img src="https://i.imgur.com/3tka3EO.png" alt="5"/>

- **Kinesis Data Streams**
  - Producers send data which is stored in shards for up to 7 days
  - Consumers process the data and save to another service
- **Amazon Kinesis Data Firehose**
  - No shards, completely automated and elastically scalable
  - Saves data directly to another service such as S3, Splunk, RedShift, or Elasticsearch
- **Amazon Kinesis Data Analytics**
  - Provides real-time SQL processing for streaming data

### Other Databases and Analitycs Services

- **AWS Data Pipeline**
  - Processes and moves data between different AWS compute and storage services
  - Save results to services including S3, RDS, DynamoDB, and EMR
- **Amazon QuickSight**
  - Business intelligence (BI) service
  - Create and publish interactive BI dashboards for Machine Learning-powered insights
- **Amazon Neptune**
  - Fully managed graph database service

- **Amazon DocumentDB**
  - Fully managed document database service (non-relational)
  - Supports MongoDB workloads
  - Queries and indexes JSON data
- **Amazon QLDB**
  - Fully managed ledger database for immutable change history
  - Provides cryptographically verifiable transaction logging
- **Amazon Managed Blockchain**
  - Fully managed service for joining public and private networks using Hyperledger Fabric and Ethereum

## Management and Governance

### AWS Organizations

- AWS organizations allows you to consolidate multiple AWS accounts into an organization that you create and centrally manage
- Available in two feature sets:
  - Consolidated Billing
  - All features
- Includes root accounts and organizational units
- Policies are applied to root accounts or OUs
- Consolidated billing includes:
  - Paying Account – independent and cannot access resources of other accounts
  - Linked Accounts – all linked accounts are independent

<img src="https://i.imgur.com/tANsioY.png" alt="5"/>

### AWS Control Tower

- Simplifies the process of **creating multi-account environments**
- Sets up governance, compliance, and security guardrails for you
- Integrates with other services and features to setup the environment for you including:
- AWS Organizations, SCPs, OUs, AWS Config, AWS CloudTrail, Amazon S3, Amazon SNS, AWS CloudFormation, AWS Service Catalog, AWS Single Sign-On (SSO)

Examples of guardrails AWS Control Tower can configure for you include:
- Disallowing public write access to Amazon Simple Storage Service (Amazon S3) buckets
- Disallowing access as a root user without multifactor authentication
- Enabling encryption for Amazon EBS volumes attached to Amazon EC2 instances

### AWS Systems Manager

- Manages many AWS resources including Amazon EC2, Amazon S3, Amazon RDS etc.
- Systems Manager Components:
  - Automation
  - Run Command
  - Inventory
  - Patch Manager
  - Session Manager
  - Parameter Store

<img src="https://i.imgur.com/vPU7SmJ.png" alt="5"/>

- **Inventory**
  - We then have inventory where all of the managed systems in systems manager report in information about themselves. We can see things like the operating system version, information about the server roles that are installed, the applications that are installed and so on
- **Patch Manager**
  - Deploy operating system and software patches automatically across large groups of Amazon EC2 or onpremises instances
- **Compliance**
  - Scan managed instances for patch compliance and configuration inconsistencies
- **Session Manager**
  - Secure remote management of your instances at scale without logging into your servers
  - Replaces the need for bastion hosts, SSH, or remote PowerShell
- **Parameter Store**
  - Parameter Store provides secure, hierarchical storage for configuration data management and secrets management

### AWS Service Catalog

- AWS Service Catalog allows organizations to **create and manage catalogs of IT services** that are approved for use on AWS
- AWS Service Catalog allows you to **centrally manage** commonly deployed IT services
- IT services can include virtual machine images, servers, software, and databases and multi-tier application architectures
- Enables users to quickly deploy only the approved IT services they need

<img src="https://i.imgur.com/t1KZUz2.png" alt="5"/>

### AWS Config

AWS Config is a service we can use to **audit the configurations of our AWS resources**, and it can be used for compliance reasons. We might want to validate that our resources are configured in a certain way. We can define how we want them to be configured and then check whether they actually comply with that or not.

<img src="https://i.imgur.com/TUyXAeK.png" alt="5"/>

|      **Example Rule**                    |                      **Description**                                                                                                                                         |
|------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| s3-bucket-server-side-encryption-enabled | Checks that your Amazon S3 bucket either has S3 default encryption enabled or that the S3 bucket policy explicitly denies put-object requests without server side encryption |
| restricted-ssh                           | Checks whether security groups that are in use disallow unrestricted incoming SSH traffic                                                                                    |
| rds-instance-public-access-check         | Checks whether the Amazon Relational Database Service (RDS) instances are not publicly accessible                                                                            |
| cloudtrail-enabled                       | Checks whether AWS CloudTrail is enabled in your AWS account                                                                                                                 |

### AWS Trusted Advisor

- Trusted Advisor is an online resource that helps to reduce cost, increase performance and improve security by optimizing your AWS environment
- Trusted Advisor provides real time guidance to help you provision your resources following best practices
- Advisor will advise you on **Cost Optimization, Performance, Security, and Fault Tolerance**

### AWS Health API and Dashboards

- AWS Personal Health Dashboard provides alerts and remediation guidance when AWS is experiencing events that may impact you
- Personal Health Dashboard gives you a personalized view into the performance and availability of the AWS services underlying your AWS resources
- Also provides proactive notification to help you plan for scheduled activities

<img src="https://i.imgur.com/Hk0iFIw.png" alt="5"/>

## AWS Cloud Security and Identity

### Identity Providers and Federation

<img src="https://i.imgur.com/y4HhDKA.png" alt="5"/>

<img src="https://i.imgur.com/me7dLUv.png" alt="5"/>

<img src="https://i.imgur.com/wPnlw8f.png" alt="5"/>

### AWS Directory Services

- Fully managed AWS services on AWS infrastructure
- Best choice if you have more than 5000 users and/or need a trust relationship set up
- You can setup trust relationships to extend authentication from on-premises Active Directories into the AWS cloud
- On-premise users and groups can access resources in either domain using SSO
- Can be used as a standalone AD in the AWS cloud

<img src="https://i.imgur.com/4I5edD5.png" alt="5"/>

- AD Connector is a directory gateway for redirecting directory requests to your on-premise Active Directory.
- AD Connector eliminates the need for directory synchronization and the cost and complexity of hosting a federation infrastructure
- Connects your existing on-premise AD to AWS
- Best choice when you want to use an existing Active Directory with AWS services.

<img src="https://i.imgur.com/8HQV3JX.png" alt="5"/>

<table>
<thead>
  <tr>
    <th><span>Directory Service</span></th>
    <th><span>Service Description</span></th>
    <th><span>Use Case</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>AWS Directory Service<br>for Microsoft Active<br>Directorys</td>
    <td>AWS-managed full Microsoft AD<br>running on Windows Server 2012 R2</td>
    <td>Enterprises that want hosted Microsoft<br>Active Directory</td>
  </tr>
  <tr>
    <td>AD Connector</td>
    <td>Allows on-premises users to log into<br>AWS services with their existing AD<br>credentials</td>
    <td>Single sign-on for on-premises<br>employees</td>
  </tr>
  <tr>
    <td>Simple AD</td>
    <td>Low scale, low cost, AD<br>implementation based on Samba</td>
    <td>Simple user directory, or you need<br>LDAP compatibility</td>
  </tr>
</tbody>
</table>

### Protecting Secrets

- **Systems Manager Parameter Store**
  - Provides secure, hierarchical storage for configuration data management and secrets management
  - It is highly scalable, available, and durable
  - You can store data such as passwords, database strings, and license codes as parameter values
  - You can store values as plaintext (unencrypted data) or ciphertext (encrypted data)
  - You can then reference values by using the unique name that you specified when you created the parameter

- **AWS Secrets Manager**
  - Similar to Parameter Store
  - Allows native and automatic rotation of keys
  - Fine-grained permissions
  - Central auditing for secret rotation

### Encryption

- **Encryption at rest**

<img src="https://i.imgur.com/yVfpC8r.png" alt="5"/>

- **Asymmetric encryption**
  - Asymmetric encryption is also known as public key cryptography
  - Messages encrypted with the public key can only be decrypted with the private key
  - Messages encrypted with the private key can be decrypted with the public key
  - Examples include SSL/TLS and SSH

<img src="https://i.imgur.com/GX92ONh.png" alt="5"/>

- **Symmetric encryption**
  - There's just one key involved, the same key is being used for encryption and decryption

<img src="https://i.imgur.com/LbKyYQw.png" alt="5"/>

- **AWS Certificate Manager (ACM)**
  - Create, store and renew SSL/TLS X.509 certificates
  - Single domains, multiple domain names and wildcards
  - Integrates with several AWS services including:
    - Elastic Load Balancing
    - Amazon CloudFront
    - AWS Elastic Beanstalk
    - AWS Nitro Enclaves
    - AWS CloudFormation

- **AWS Key Management Service (KMS)**
<img src="https://i.imgur.com/sUN3KpA.png" alt="5"/>

- **AWS CloudHSM**
  - AWS CloudHSM is a cloud-based hardware security module (HSM)
  - Generate and use your own encryption keys on the AWS Cloud
  - Manage your own encryption keys using FIPS 140-2 Level 3 validated HSMs
  - CloudHSM runs in your VPC

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky"></th>
    <th class="tg-0pky">CloudHSM</th>
    <th class="tg-0pky">AWS KMS</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-fymr">Tenancy</td>
    <td class="tg-0pky">Single-tenant HSM</td>
    <td class="tg-0pky">Multi-tenant AWS service</td>
  </tr>
  <tr>
    <td class="tg-fymr">Availability</td>
    <td class="tg-0pky">Customer-managed durability and<br>available</td>
    <td class="tg-0pky">Highly available and durable key storage<br>and management</td>
  </tr>
  <tr>
    <td class="tg-fymr">Root of Trust</td>
    <td class="tg-0pky">Customer managed root of trust</td>
    <td class="tg-0pky">AWS managed root of trust</td>
  </tr>
  <tr>
    <td class="tg-1wig">FIPS 140-2</td>
    <td class="tg-0lax">Level 3</td>
    <td class="tg-0lax">Level 2 / Level 3 in some areas</td>
  </tr>
  <tr>
    <td class="tg-1wig">3rd Party Support</td>
    <td class="tg-0lax">Broad 3rd Party Support</td>
    <td class="tg-0lax">Broad AWS service support</td>
  </tr>
</tbody>
</table>

### Logging and Auditing

- **Amazon CloudWatch Logs**
  - Gather application and system logs in CloudWatch
  - Defined expiration policies and KMS encryption

<img src="https://i.imgur.com/miCUIxD.png" alt="5"/>

- **AWS CloudTrail**
  - CloudTrail logs API activity for auditing
  - By default, management events are logged and retained for 90 days
  - A CloudTrail Trail logs any events to S3 for indefinite retention
  - Trail can be within Region or all Regions
  - CloudWatch Events can triggered based on API calls in CloudTrail
  - Events can be streamed to CloudWatch Logs

- **VPC Flow Logs**
  - Flow Logs capture information about the IP traffic going to and from network interfaces in a VPC
  - Flow log data is stored using Amazon CloudWatch Logs
  - Flow logs can be created at the following levels:
    - VPC
    - Subnet
    - Network interface

<img src="https://i.imgur.com/zkpCShN.png" alt="5"/>

- **Access Logs**
  - **Elastic Load Balancing Access Logs**
    - Capture detailed information about requests sent to the load balancer
    - Use to analyze traffic patterns and troubleshoot issues
    - Can identify requester, IP, request type etc.
    - Can be optionally stored and retained in S3.
  - **S3 Access Logs**
    - Provides detailed records for the requests that are made to a bucket
    - Details include the requester, bucket name, request time, request action, response status, and error code (if applicable)
    - Disabled by default

### Detect and Response

- **Amazon Detective**
  - Analyze, investigate, and quickly identify the root cause of potential security issues or suspicious activities
  - Automatically collects data from AWS resources
  - Uses machine learning, statistical analysis, an graph theory
  - Creates a unified, interactive view of resources, users and interactions between them
  - Data sources include VPC Flow Logs, CloudTrail, and GuardDuty

- **AWS GuardDuty**
  - Intelligent threat detection service
  - Detects account compromise, instance compromise, malicious reconnaissance, and bucket compromise
  - Continuous monitoring for events across:
    - AWS CloudTrail Management Events
    - AWS CloudTrail S3 Data Events
    - Amazon VPC Flow Logs
    - DNS Logs

- **Amazon Macie**
  - Macie is a fully managed data security and data privacy service
  - Uses machine learning and pattern matching to discover, monitor, and help you protect your sensitive data on Amazon S3
  - Macie enables security compliance and preventive security
  - Can Identify a variety of data types, including PII, Protected Health Information (PHI), regulatory documents, API keys, and secret keys

<img src="https://i.imgur.com/QU9LmnK.png" alt="5"/>

### Firewalls and DDoS Protection

- **AWS Web Application Firewall (WAF)**
  - AWS WAF is a web application firewall
  - WAF lets you create rules to filter web traffic based on conditions that include IP addresses, HTTP headers and body, or custom URIs
  - WAF makes it easy to create rules that block common web exploits like SQL injection and cross site scripting
  - The rules are known as Web ACLs

<img src="https://i.imgur.com/rWJTp19.png" alt="5"/>

- **AWS Shield**
  - AWS Shield is a managed Distributed Denial of Service (DDoS) protection service
  - Safeguards web application running on AWS with always-on detection and automatic inline mitigations
  - Helps to minimize application downtime and latency
  - Two tiers
    - Standard – no cost
    - Advanced - $3k USD per month and 1 year commitment
  - Integrated with Amazon CloudFront (standard included by default)

### Compliance Services

- **AWS Artifact**
  - AWS Artifact provides on-demand access to AWS’ security and compliance reports and select online agreements
  - Reports available in AWS Artifact include:
    - Service Organization Control (SOC) reports
    - Payment Card Industry (PCI) reports
  - Provides certifications from accreditation bodies across geographies and compliance verticals that validate the implementation and operating effectiveness of **AWS security controls**
  - Agreements available in AWS Artifact include the Business Associate Addendum (BAA) and the Nondisclosure Agreement (NDA)

### Security Management and Support

- **AWS Security Hub**
  - Provides a comprehensive view of security alerts and security posture across AWS accounts
  - Aggregates, organizes, and prioritizes security alerts, or findings, from multiple AWS services
  - Continuously monitors your environment using automated security checks
  - Configure security standards to validate against
    - AWS Foundational Security Best Practices v1.0.0
    - CIS AWS Foundations Benchmark v1.2.0
    - PCI DSS v3.2.1

- **AWS Security Bulletins**
  - Security and privacy events affecting AWS services are published (also has an RSS feed) 

<img src="https://i.imgur.com/rhJAW4f.png" alt="5"/>

- **AWS Trust & Safety Team**
  - Contact the AWS Trust & Safety team if AWS resources are being used for:
    - Spam
    - Port scanning
    - Denial-of-service attacks
    - Intrusion attempts
    - Hosting of objectionable or copyrighted content
    - Distributing malware
  - Email address is: abuse@amazonaws.com

### Penetration Testing

- Penetration testing is the practice of testing one’s own application’s security for vulnerabilities by simulating an attack
- AWS allows penetration testing without prior approval for 8 AWS services

- **Permitted services**
  - Amazon EC2 instances, NAT Gateways, and Elastic Load Balancers
  - Amazon RDS
  - Amazon CloudFront
  - Amazon Aurora
  - Amazon API Gateways
  - AWS Lambda and Lambda Edge functions
  - Amazon Lightsail resources
  - Amazon Elastic Beanstalk environments

- **Prohibited Activities**
  - DNS zone walking via Amazon Route 53 Hosted Zones
  - Denial of Service (DoS), Distributed Denial of Service (DDoS), Simulated DoS, Simulated DDoS Port flooding
  - Protocol flooding
  - Request flooding (login request flooding, API request flooding)

## Architecting for the Cloud

### AWS Well Architected

- AWS Well-Architected helps cloud architects build secure, high-performing, resilient, and efficient infrastructure for their applications and workloads
- Based on 5 pillars:
  - Operational Excellence
  - Security
  - Reliability
  - Performance Efficiency
  - Cost Optimization

Consists of:
- AWS Well-Architected Guidance
- AWS Well-Architected Tool
- AWS Well-Architected Lenses
- AWS Architecture Center

### AWS Well-Architected Framework

Helps you understand the pros and cons of decisions you make while building systems on AWS
Based on 5 pillars:
- **Operational Excellence Pillar**
  - Support development and run workloads effectively
  - Gain insight into workload operations
  - Continuously improve processes and procedures to deliver business value
  - Best practices for operational excellence:
    - Perform operations as code
    - Make frequent, small, reversible changes
    - Refine operations procedures frequently
    - Anticipate failure
    - Learn from all operational failures

- **Security Pillar**
  - Protect data, systems, and assets to take advantage of cloud technologies to improve your security
  - Best practices for security:
    - Implement a strong identity foundation
    - Enable traceability
    - Apply security at all layers
    - Automate security best practices
    - Protect data in transit and at rest
    - Keep people away from data
    - Prepare for security events

- **Reliability Pillar**
  - Ensuring a workload can perform its intended function correctly and consistently when it’s expected to
  - This includes the ability to operate and test the workload through its total lifecycle
  - Best practices for reliability:
    - Automatically recover from failure
    - Test recovery procedures
    - Scale horizontally to increase aggregate workload availability
    - Stop guessing capacity
    - Manage change in automation

- **Performance Efficiency Pillar**
  - The ability to use computing resources efficiently to meet system requirements, and to maintain that efficiency as demand changes and technologies evolve
  - Best practices for performance efficiency:
    - Democratize advanced technologies
    - Go global in minutes
    - Use serverless architectures
    - Experiment more often
    - Consider mechanical sympathy

- **Cost Optimization Pillar**
  - The ability to run systems to deliver business value at the lowest price point
  - Best practices for cost optimization:
    - Implement Cloud Financial Management
    - Adopt a consumption model
    - Measure overall efficiency
    - Stop spending money on undifferentiated heavy lifting
    - Analyze and attribute expenditure

## Accounts, Billing and Support

### AWS Pricing Fundamentals

<img src="https://i.imgur.com/ynxFb4X.png" alt="5"/>

**Pay-as-you-go**
- Easily adapt to changing business needs
- Improved responsiveness to change
- Adapt based on needs, not forecasts
- Reduce risk over overpositioning of missing capacity


**Save when you reserve**
- Invest in reserved capacity (e.g. RDS and EC2)
- Save up to 75% compared to on-demand (pay-asyou-go)
- The more you pay upfront the greater the discount


**Pay less by using more**
- Pay less using volume-based discounts
- Tiered pricing means the more you use the lower the unit pricing

### Amazon EC2 Pricing Options

<img src="https://i.imgur.com/DeupFuz.png" alt="5"/>

<img src="https://i.imgur.com/E7CIw7h.png" alt="5"/>

<img src="https://i.imgur.com/529hHCY.png" alt="5"/>

<img src="https://i.imgur.com/nos6X3j.png" alt="5"/>

<img src="https://i.imgur.com/Gj0CI83.png" alt="5"/>

<img src="https://i.imgur.com/XPg5dva.png" alt="5"/>

<img src="https://i.imgur.com/3sN4kaU.png" alt="5"/>

<img src="https://i.imgur.com/Y9bOIia.png" alt="5"/>

### Amazon EC2 Pricing Use Cases

<img src="https://i.imgur.com/4s5h1vr.png" alt="5"/>

<img src="https://i.imgur.com/m6P8fco.png" alt="5"/>

### Pricing for other AWS Services

- **Amazon S3 Pricing**
  - Storage class – e.g. Standard or IA
  - Storage quantity – data volume stored in your buckets on a per GB basis
  - Number of requests – the number and type of requests, e.g. GET, PUT, POST, LIST, COPY
  - Lifecycle transitions requests – moving data between storage classes
  - Data transfer – data transferred out of an S3 region is charged

- **Amazon S3 Glacier Pricing**
  - Three options for access to archives, listed in the table below:

<table>
<thead>
  <tr>
    <th></th>
    <th>Expedited</th>
    <th>Standard</th>
    <th>Bulk</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td><b>Data Access Time</b></td>
    <td>1-5 minutes</td>
    <td>3-5 hours</td>
    <td>5-12 hours</td>
  </tr>
  <tr>
    <td><b>Data retrievals</b></td>
    <td>$0.03 per GB</td>
    <td>$0.01 per GB</td>
    <td>$0.0025 per GB</td>
  </tr>
  <tr>
    <td><b>Retrieval requests</b></td>
    <td>On-Demand: $0.01 per request<br>Provisioned: $100 per<br>Provisioned Capacity Unit</td>
    <td>$0.050 per 1,000<br>requests</td>
    <td>$0.025 per 1,000 requests</td>
  </tr>
</tbody>
</table>

- **Amazon EBS Pricing**
  - **Volumes:** volume storage for all EBS volumes type is charged by the amount of GB provisioned per month
  - **Snapshots:** based on the amount of space consumed by snapshots in S3. Copying snapshots is charged on the amount of data copied across regions
  - **Data transfer:** inbound data transfer is free, outbound data transfer charges are tiered

- **Amazon RDS Pricing**
  - **Clock hours of server uptime**: amount of time the DB instance is running
  - **Database characteristics**: e.g. database engine, size and memory class
  - **Database purchase type**: e.g. On-Demand, Reserved.
  - **Number of database instances**
  - **Provisioned storage**: backup is included up to 100% of the size of the DB
  - **Additional storage**: the amount of storage in addition to the provisioned storage is charged per GB per month
  - **Requests**: the number of input and output requests to the DB
  - **Deployment type**: single AZ or multi-AZ
  - **Reserved Instances**: RDS RIs can be purchased with No Upfront, Partial Upfront, or All Upfront terms. Available for Aurora, MySQL, MariaDB, Oracle and SQL Server

- **Amazon DynamoDB Pricing**
  - Charged for reading, writing, and storing data
  - **On-demand capacity mode**
    - Charged for reads and writes
    - No need to specify how much capacity is required
    - Good for unpredictable workloads
  - **Provisioned capacity mode**
    - Specify number of reads and writes per second
    - Can use Auto Scaling
    - Good for predictable workloads
    - Consistent traffic or gradual changes

- **Amazon CloudFront Pricing**
  - **Traffic distribution:** data transfer and request pricing, varies across regions, and is based on the edge location from which the content is served
  - **Requests:** the number and type of requests (HTTP or HTTPS) and the geographic region in which they are made
  - **Data transfer out:** quantity of data transferred out of CloudFront edge locations
  - There are additional chargeable items such as invalidation requests, field-level encryption requests, and custom SSL certificates

- **AWS Lambda Pricing**
  - **Number of requests**
  - **Duration of request**: rounded up to the nearest millisecond
  - Price is dependent on the amount of memory allocated to the function
  - Free tier includes 1M free requests per month and 400,000 GB-seconds of compute time

### AWS Support Plans

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky"></th>
    <th class="tg-fymr">Developer</th>
    <th class="tg-fymr">Business</th>
    <th class="tg-fymr">Enterprise</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">AWS Trusted Advisor Best<br>Practice Checks</td>
    <td class="tg-0pky">7 Core checks</td>
    <td class="tg-0pky">Full set of checks</td>
    <td class="tg-0pky">Full set of checks</td>
  </tr>
  <tr>
    <td class="tg-0pky">Enhanced Technical Support</td>
    <td class="tg-0pky">- Business hours email<br>access to Cloud Support<br>Associates<br>- Unlimited cases / 1 primary contact</td>
    <td class="tg-0pky">- 24x7 phone, email, and chat<br>access to Cloud Support<br>Engineers<br>- Unlimited cases / unlimitedcontacts (IAM supported)</td>
    <td class="tg-0pky">- 24x7 phone, email, and chat access<br>to Cloud Support Engineers<br>- Unlimited cases / unlimitedcontacts (IAM supported)</td>
  </tr>
  <tr>
    <td class="tg-0pky">Case Severity / Response<br>Times*</td>
    <td class="tg-0pky">- General guidance: &lt; 24<br>hours**<br>- System impaired: &lt; 12hours**</td>
    <td class="tg-0pky">- General guidance: &lt; 24 hours<br>- System impaired: &lt; 12 hours<br>- Production system impaired: &lt; 4 hours<br>- Production system down: &lt; 1 hour</td>
    <td class="tg-0pky">- General guidance: &lt; 24 hours<br>- System impaired: &lt; 12 hours<br>- Production system impaired: &lt; 4 hours<br>- Production system down: &lt; 1 hour<br>- Business-critical system down: &lt; 15 minutes</td>
  </tr>
</tbody>
</table>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky"></th>
    <th class="tg-fymr">Developer</th>
    <th class="tg-fymr">Business</th>
    <th class="tg-fymr">Enterprise</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Architectural Guidance<br></td>
    <td class="tg-0pky">General</td>
    <td class="tg-0pky">Contextual to your usecases</td>
    <td class="tg-0pky">Consultative review and guidance based on your<br>applications</td>
  </tr>
  <tr>
    <td class="tg-0pky">Programmatic Case<br>Management</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">AWS Support API<br></td>
    <td class="tg-0pky">AWS Support API</td>
  </tr>
  <tr>
    <td class="tg-0pky">Proactive Programs and<br>Services<br></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Access to Infrastructure<br>Event Management for<br>additional fee<br></td>
    <td class="tg-0pky">- Infrastructure Event Management<br>- Well-Architected Reviews<br>- Access to proactive reviews, workshops, and<br> deep dives<br></td>
  </tr>
  <tr>
    <td class="tg-0lax">Technical Account<br>Management</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">Designated Technical Account Manager (TAM) to<br>proactively monitor your environment and assist<br>with optimization and coordinate access to<br>programs and AWS experts</td>
  </tr>
  <tr>
    <td class="tg-0lax">Account Assistance</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">Concierge Support Team</td>
  </tr>
</tbody>
</table>

### Consolidated Billing

Consolidated Billing is a **feature of AWS Organizations**, has the following benefits:

- One bill: You get one bill for multiple accounts
  - **Easy tracking**: You can track the charges across multiple accounts and download the combined cost and usage data
  - **Combined usage**: You can combine the usage across all accounts in the organization to share the volume pricing discounts and Reserved Instance discounts
  - **No extra fee**: Consolidated billing is offered at no additional cost

<img src="https://i.imgur.com/yphOpdu.png" alt="5"/>

### AWS Budgets

<img src="https://i.imgur.com/04RnZm5.png" alt="5"/>

### AWS Cost Management Tools

- **AWS Cost Explorer**
  - The AWS Cost Explorer is a free tool that allows you to view charts of your costs
  - You can view cost data for the past 13 months and forecast how much you are likely to spend over the next three months
  - Cost Explorer can be used to discover patterns in how much you spend on AWS resources over time and to identify cost problem areas
  - Cost Explorer can help you to identify service usage statistics such as:
    - Which services you use the most
    - View metrics for which AZ has the most traffic
    - Which linked account is used the most

- **AWS Cost & Usage Report**
  - Publish AWS billing reports to an Amazon S3 bucket
  - Reports break down costs by:
  - Hour, day, month, product, product resource, tags
  - Can update the report up to three times a day
  - Create, retrieve, and delete your reports using the AWS CUR API Reference

- **AWS Price List API**
  - Query the prices of AWS services
  - **Price List Service API** (AKA the Query API) – query with JSON
  - **AWS Price List API** (AKA the Bulk API) – query with HTML
  - Alerts via Amazon SNS when prices change
