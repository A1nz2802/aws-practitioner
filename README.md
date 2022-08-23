# Table of Contents
- [Cloud Computing and AWS](#cloud-computing-and-aws)
    + [Cloud Computing vs Traditional IT](#cloud-computing-vs-traditional-it)
    + [There are 3 types of cloud computing model](#there-are-3-types-of-cloud-computing-model)
    + [There are 4 types of cloud deployment](#there-are-4-types-of-cloud-deployment)
    + [Fundamentals of pricing](#fundamentals-of-pricing)
    + [The AWS Global Infrastructure is made up of](#the-aws-global-infrastructure-is-made-up-of)
    + [The AWS shared responsability model defines custormer/AWS responsabilities](#the-aws-shared-responsability-model-defines-custormer-aws-responsabilities)
    + [The 6 advantages of cloud](#the-6-advantages-of-cloud)
- [AWS Identity and Access Managment](#aws-identity-and-access-managment)
    + [Users, Groups, Roles and Policies](#users--groups--roles-and-policies)
    + [IAM Best Practices](#iam-best-practices)
- [AWS Compute Services](#aws-compute-services)
    + [Benefits of Amazon EC2](#benefits-of-amazon-ec2)
    + [User Data & Metadata](#user-data---metadata)
    + [Access Keys](#access-keys)
    + [AWS Batch](#aws-batch)
    + [Amazon LightSail](#amazon-lightsail)
    + [Amazon Elastic Container Service (ECS)](#amazon-elastic-container-service--ecs-)
- [AWS Storage Services](#aws-storage-services)
    + [Amazon Elastic Block Store (EBS)](#amazon-elastic-block-store--ebs-)
    + [Amazon EBS Snapshots and DLM (Data Lifecycle Manager DLM)](#amazon-ebs-snapshots-and-dlm--data-lifecycle-manager-dlm-)
    + [EBS vs Instance Store](#ebs-vs-instance-store)
    + [Amazon Machine Images (AMI)](#amazon-machine-images--ami-)
    + [Amazon Elastic File System (EFS)](#amazon-elastic-file-system--efs-)
    + [Amazon Simple Storage (S3)](#amazon-simple-storage--s3-)
    + [Amazon S3 Storage Classes](#amazon-s3-storage-classes)
    + [S3 Versioning, Replication, and Lifecycle Rules](#s3-versioning--replication--and-lifecycle-rules)
    + [Amazon S3 Glacier](#amazon-s3-glacier)
    + [AWS Storage Gateway](#aws-storage-gateway)
- [DNS, Elastic Load Balancing, and Auto Scaling](#dns--elastic-load-balancing--and-auto-scaling)
    + [DNS and Amazon Route 53](#dns-and-amazon-route-53)
    + [Elasticity: Scaling Up vs Out](#elasticity--scaling-up-vs-out)
    + [Amazon EC2 Auto Scaling](#amazon-ec2-auto-scaling)
    + [Load Balancing and High Availability](#load-balancing-and-high-availability)
    + [Amazon Elastic Load Balancer (ELB)](#amazon-elastic-load-balancer--elb-)
    + [Elastically Scale the Application](#elastically-scale-the-application)
    + [Scaling Policies](#scaling-policies)
- [Application Services](#application-services)
    + [Serverless Services](#serverless-services)
    + [AWS Lambda Functions](#aws-lambda-functions)
    + [Application Integration Services](#application-integration-services)
    + [Amazon EventBridge/CloudWatch Events](#amazon-eventbridge-cloudwatch-events)
    + [Amazon API Gateway](#amazon-api-gateway)
- [Amazon VPC, Networking, and Hybrid](#amazon-vpc--networking--and-hybrid)
    + [Amazon Virtual Private Cloud (VPC)](#amazon-virtual-private-cloud--vpc-)
    + [Create a custom VPC](#create-a-custom-vpc)
    + [Security Groups and Network ACLs](#security-groups-and-network-acls)
    + [Public, Private and Elastic IP Address](#public--private-and-elastic-ip-address)
    + [NAT Gateways and NAT Instances](#nat-gateways-and-nat-instances)
    + [VPC Peering](#vpc-peering)
    + [Amazon VPN and AWS Direct Connect](#amazon-vpn-and-aws-direct-connect)
    + [AWS Transit Gateway](#aws-transit-gateway)
    + [AWS Outposts](#aws-outposts)
- [Deployment and Automation](#deployment-and-automation)
    + [Caching and Amazon CloudFront](#caching-and-amazon-cloudfront)
    + [AWS Global Accelerator](#aws-global-accelerator)
    + [AWS CloudFormation](#aws-cloudformation)
    + [AWS Cloud Development Kit (CDK)](#aws-cloud-development-kit--cdk-)
    + [AWS Elastic Beanstalk](#aws-elastic-beanstalk)
    + [AWS Developer Tools](#aws-developer-tools)
    + [AWS X-Ray](#aws-x-ray)
    + [AWS OpsWorks](#aws-opsworks)

## Cloud Computing and AWS

#### Cloud Computing vs Traditional IT

| **Cloud Computing**     | **Traditional IT**                              |
|-------------------------|-------------------------------------------------|
| On-demand, self service | Requires human involvement                      |
| Broad network access    | Internal accessibility, limited public presence |
| Resourse Pooling        | Single-tenant, can be virtualized               |
| Rapid elasticity        | Limited scalability                             |
| Measured service        | Usage is not tipically measured                 |

#### There are 3 types of cloud computing model

- Infrastructure as a service (IaaS): Managed up to the OS
- Platform as a service (PaaS): Managed up to the code
- Software as a service (SaaS): Pure consumption model 

#### There are 4 types of cloud deployment

- Public Cloud or simple "Cloud" - e.g. AWS, Azure, Google Cloud Platform
- Hybrid Cloud, mixture of public and private clouds
- Private Cloud (on-premise), managed in your own data center, e.g. Hyper-V, OpenStack, VMware
- Multicloud, use private/public clouds from multiple providers 

#### Fundamentals of pricing

- Compute: CPU/RAM and duration
- Storage: quantity of data stored or allocated
- Outbound data transfer: data leaving an AWS Region

#### The AWS Global Infrastructure is made up of

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

#### The AWS shared responsability model defines custormer/AWS responsabilities

- AWS are responsible for "Security **of** the cloud"
  - AWS is responsible for protecting the infrastructure that runs all of the service offered in the AWS Cloud
  - This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services
- Customers are responsibles for "Security **in** the cloud"
  - For EC2 this includes network level security, operating system patches and updates, IAM user access managment, and client and server-side data encryption

<img src="https://i.imgur.com/TxrGIeK.png" alt="1" width="100%"/>

<img src="https://i.imgur.com/Xfq8oNN.png" alt="1" width="100%"/>

#### The 6 advantages of cloud

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

#### Users, Groups, Roles and Policies

- IAM User: Is an entity that represents a person or service
- Groups: Groups are collections of users and have policies attached to them, use groups to assign permissions to users.
- Roles: Roles are created and then “assumed” by trusted entities and define a set of permissions for making AWS service requests.
- Policies: Policies are documents that define permissions and can be applied to users, groups, and roles. Policy documents are written in JSON (key value pair that consists of an attribute and a value).

<img src="https://digitalcloud.training/wp-content/uploads/2022/02/iam-users-groups-roles-policies.png" alt="2" width="100%"/>

#### IAM Best Practices

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

#### Benefits of Amazon EC2

- Elastic computing: easily launch hundreds to thousands of EC2 instances within minutes
- Completed control: you control the EC2 instances with full root/administrative access
- Flexible: choice of instance types, operating systems, and software packages
- Reliable: EC2 offers very high levels of availability and instances can be rapidly commissioned and replaced
- Secure: fully integrated with Amazon VPC and sewcurity features
- Inexpensive: low cost, pay for what you use

#### User Data & Metadata

- User Data gives you the ability to run commands when the system is starting
- Metadata can return information about the instance that's recorded locally

<img src="https://i.imgur.com/pEREcsS.png" alt="4" width="100%"/>
<img src="https://i.imgur.com/OfpqWLs.png" alt="5" width="100%"/>

#### Access Keys

- Access Keys are configured on the EC2 instances
- This is **secret information that is stored on the file system of the instance** (it's not a very secure way of storing that information)
- Access Keys will pick up whatever permissions the policy allows that user

<img src="https://i.imgur.com/vgRCR3k.png" alt="5" width="100%"/>

- Instance profile is a way that we can connect an IAM role to our EC2 instance. That role is then assumed by the EC2 instance and will gain access to whathever permissions the policy attached to the roles provides. The great thing about this is there's **no credentials stored on the EC2 instance**

<img src="https://i.imgur.com/HoWvQTf.png" alt="5" width="100%"/>

#### AWS Batch 

- AWS Batch is a service that we can use to run what's called a batch workload on AWS

<img src="https://miro.medium.com/max/1200/0*LhyLjfye1TUn341e" alt="5" width="90%"/>

#### Amazon LightSail

- Amazon LightSail is another compute service, and it's very similar to EC2. This service gives you the ability to run virtual servers in the cloud just like EC2 does. The difference is that the interface for it is a lot simpler to use for those who don't really have a strong background in technology. **AWS call it the simple cloud server**
- Low cost and ideal for users with less technical expertise
- It allows compute storage, networking services, virtual servers, database services, and it does support load balancing as well
- You can connect in using the Secure Shell Protocol or the Remote Desktop Protocol for Windows instances. Can access Amazon VPC.

<img src="https://i.imgur.com/bJtK82h.png" alt="5" width="50%"/>

#### Amazon Elastic Container Service (ECS)

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

#### Amazon Elastic Block Store (EBS)

- EBS is the storage system that's used by Amazon EC2 and the EBS volume is where OS and any data is stored persistently
- Each EC2 instance can have one or more EBS volume attached to it, but **you can't actually attach multiple intances to an individual volume** (exists EBS multi-attach and it's under some very specific constraints)
- EBS volume live within an availability zone
- The EBS volume data persists independently of the life of the instance
- EBS volumes must be in the **same AZ** as the instances they are attached to
- **Root EBS** volumes **are deleted** on termination by default

<img src="https://i.imgur.com/enljJRB.png" alt="5" width="100%"/>

#### Amazon EBS Snapshots and DLM (Data Lifecycle Manager DLM)

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

#### EBS vs Instance Store

- Instance Store volumes are **physically attached** to the host
- EBS volumes are **attached over a network** and they are **persistent storage**
- Instance Store are **very high performance**, but they're **non-persistent**

<img src="https://i.imgur.com/wVW9aPK.png" alt="5" width="100%"/>

#### Amazon Machine Images (AMI)

- An AMI provides the information required to launch an instance
- An AMI includes the following:
  - One or more EBS snapshots, or, for instance-store-backed AMIs, **a template for the root volume** of the instance (for example, an OS, an aplication server, and aplications)
  - Launch permissions that control which AWS accounts can use the AMI to launch instances
  - A block device mapping that specific the volumes to attach to the instance when it's launched
- AMIs come in three main categories:
  - Community AMIs: free to use, generally you just select the operating system you want
  - AWS Marketplace AMIs: pay to use, generally come packaged with aditional, licensed software
  - My AMIs: AMI's that you create yourself

#### Amazon Elastic File System (EFS)

- EFS is something that we can attach multiple instances to
- You can event connect instances from different VPC's as well
- EFS uses something called the **NFS Protocol**
- It's actually limited to Linux instances only

<img src="https://i.imgur.com/cTtbHbJ.png" alt="5" width="100%"/>

#### Amazon Simple Storage (S3)

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

#### Amazon S3 Storage Classes

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

#### S3 Versioning, Replication, and Lifecycle Rules

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

#### Amazon S3 Glacier

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

#### AWS Storage Gateway

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

#### DNS and Amazon Route 53 

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

#### Elasticity: Scaling Up vs Out

- Scaling up (vertical scaling): Scaling up means that we add more hardware. We have more memory, more storage space, more network bandwidth, etc. Essentially, we're adding resources to that instance. How do you do this in Amazon resources? For example, with EC2, we might have a T2 instance, so that's a certain instance type, has a certain amount of CPU and RAM. Now **we can always change the instance type** and maybe we move it to C5, now we have an instance with more resources. **It's the same instance we just change the instance type**

<img src="https://i.imgur.com/fjADYkP.png" alt="5" width="70%"/>

<img src="https://i.imgur.com/wu36xS3.png" alt="5" width="50%"/>

- Scaling out (horizontal scaling): With horizontal scaling, we simply add more instances. Scalling out gives you more **resiliency**

<img src="https://i.imgur.com/bW67Apm.png" alt="5" width="70%"/>

<img src="https://i.imgur.com/ITPCZFx.png" alt="5" width="50%"/>

#### Amazon EC2 Auto Scaling

- Amazon EC2 Auto Scaling is a service that will dynamically scale our EC2 instances horizontally, scaling out by launching and terminating EC2 instances
- Provides elasticity and scalability
- Responds to EC2 status checks and CloudWatch metrics
- Can scale based on demand (performance) or on a schedule
- Scaling policies define how to respond to changes in demand

<img src="https://i.imgur.com/OB2g0Gb.png" alt="5" width="100%"/>

#### Load Balancing and High Availability

- Fault tolerance is where we have **the ability to recover in the case of something like a component failure**. AWS provides a lot of fault tolerance built-in to their infrastructure and we're able to spread the load between different availability zones so that we have fault tolerance across the AZ because each one is one or more data centers.

<img src="https://live.staticflickr.com/65535/52274804469_0f1547971d_o.png" alt="5" width="100%"/>

- If we add in auto scaling as well, then we get an even better solution because that failed web server, can **now actually be replaced by auto scaling**
- We regularly use auto scaling and load balancing together to make sure that we have the right number of EC2 instances that we can recover from failure and that we can direct the incoming connections across all of out instances

<img src="https://live.staticflickr.com/65535/52274577621_5ac5595a63_o.png" alt="5" width="100%"/>

#### Amazon Elastic Load Balancer (ELB)

<img src="https://live.staticflickr.com/65535/52273696337_c2c2834733_o.png" alt="5" width="100%"/>

<img src="https://live.staticflickr.com/65535/52275258200_d3a2ae8c91_o.png" alt="5" width="100%"/>

#### Elastically Scale the Application

<img src="https://i.imgur.com/bxvUsDz.png" alt="5" width="100%"/>

#### Scaling Policies

- Target Tracking: Attempts to keep the group at or close to the metric
- Simple Scaling: Adjust group size based on a metric
- Step Scaling: Adjust group size based on a metric – adjustments vary based on the size of the alarm breach
- Scheduled Scaling – Adjust the group size at a specific time

## Application Services

#### Serverless Services

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

#### AWS Lambda Functions

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

#### Application Integration Services

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

#### Amazon EventBridge/CloudWatch Events 

- Serverless event bus
- Used for building event-driven architectures
- Ingests data and routes it to target AWS services

<img src="https://i.imgur.com/88wkOcH.png" alt="5" width="100%"/>

#### Amazon API Gateway

- Publish APIs on AWS
- Create RESTful and Websocket APIs
- Fully managed service
- Forward connections to AWS services and on-premises applications

<img src="https://i.imgur.com/APf9zh1.png" alt="5" width="100%"/>

## Amazon VPC, Networking, and Hybrid

#### Amazon Virtual Private Cloud (VPC)

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

#### Create a custom VPC

<img src="https://i.imgur.com/ExRRKgA.png" alt="5" width="100%"/>

#### Security Groups and Network ACLs

- A **firewall** is essentially a security device wich screens incoming and outgoing connections and checks whether they're going to be allowed or disallowed based on some rules that we can define
- Network ACLs is Network Access Control List. ACLs is that list of the ports and protocols that you're going to allow

<img src="https://i.imgur.com/T2yQjKI.png" alt="5" width="100%"/>

<img src="https://i.imgur.com/UD1B1tM.png" alt="5" width="100%"/>

#### Public, Private and Elastic IP Address

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

#### NAT Gateways and NAT Instances

- NAT means Network Address Translation

| **NAT Instance**                                                                                | **NAT Gateway**                                                                     |
|-------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|
| Managed by you (e.g. software updates)                                                          | Managed by AWS                                                                      |
| Scale up (instance type) manually and use enhanced networking                                   | Elastic scalability up to 45 Gbps                                                   |
| No high availability – scripted/auto-scaled HA possible using multiple NATs in multiple subnets | Provides automatic high availability within an AZ and can be placed in multiple AZs |

<img src="https://i.imgur.com/2ez99PB.png" alt="5" width="100%"/>

#### VPC Peering

- We use VPC Peering to connect our VPCs in the same or in different accounts,in the same or different regions, and we want to connect them using private IP addresses.

<img src="https://i.imgur.com/HbIYdFI.png" alt="5" width="100%"/>

#### Amazon VPN and AWS Direct Connect

In many circumstances, we're going to want to connect our on-premises data centers to the public cloud, to our AWS VPC. We might also do that for our company offices as well. So there's two ways that we can do this, and that's an Amazon virtual private network, VPN, and also an AWS Direct Connect connection.

- AWS Site-to-Site VPN
  - You can establish a virtual private network connection and this is an encrypted connection that's going over the internet. One of the problems with that is you are subject to any bandwidth issues, any latency or delay issues on the internet.

<img src="https://i.imgur.com/ktnuosw.png" alt="5" width="100%"/>

- AWS VPN CloudHub
  - It's essentially a series of different site-to-site connections. We have customer gateways in multiple offices or data center environments and we connect them in a hub-and-spoke model to our virtual private gateway on the AWS side. In this model, the customer offices can also communicate to each othe via AWS.

<img src="https://i.imgur.com/mawI9tq.png" alt="5" width="100%"/>

- AWS Direct Connect

<img src="https://i.imgur.com/YQY6gdH.png" alt="5" width="100%"/>

#### AWS Transit Gateway

Earlier on, we looked at VPC peering and you saw that we had lots of different connections goins between our four VPC, imagine if you have many VPCs, then it's going to get very complicated using VPC Peering to set up internal routing.

You can think of the transit gateway as a network hub that interconnects your VPCs and your on-premises network

<img src="https://i.imgur.com/b9k6usV.png" alt="5" width="100%"/>

#### AWS Outposts

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

#### Caching and Amazon CloudFront

Amazon CloudFront is a service we can use to improve performance for accessing content by caching it around the world. Maybe your website content is sitting in S3 or it's sitting on an EC2 Web server, that content then gets pushed to something called an **edge location**. There's lots of edge locations around the world and they're part of the AWS global infrastructure and that means that your users can now connect to the nearest edge location.

<img src="https://i.imgur.com/WNWv6ua.png" alt="5" width="100%"/>

#### AWS Global Accelerator

AWS Global Accelerator is another service that we can use to improve the performance of access to our AWS resources. Just like with CloudFront, the AWS Global Accelerator service leverages these edge locations that are around the world

- AWS Global Accelerator vs CloudFront
  - Both use the AWS global network and edge locations
  - CloudFront improves performance for cacheable content and dynamic content
  - GA improves performance for a wide range of applications over TCP and UDP
  - GA proxies connections to applications in one or more AWS Regions
  - GA provides failover between AWS Regions

<img src="https://i.imgur.com/m1CpY2X.png" alt="5" width="100%"/>

#### AWS CloudFormation

AWS CloudFormation is a service that we can use to deploy infrastructure on AWS using code that's written in a template file.

- Infrastructure is provisioned consistently, with fewer mistakes (human error)
- Less time and effort than configuring resources manually
- Free to use (you're only charged for the resources provisioned)
- A template is a YAML or JSON template used to describe the endstate of the infrastructure you are either provisioning or changing
- CloudFormation creates a Stack based on the template
- Can easily rollback and delete the entire stack as well

<img src="https://i.imgur.com/qqE6VvE.png" alt="5" width="100%"/>

#### AWS Cloud Development Kit (CDK)

- Open-source software development framework to define your cloud application resources using familiar programming languages
- Preconfigures cloud resources with proven defaults using constructs
- Provisions your resources using AWS CloudFormation
- Enables you to model application infrastructure using TypeScript, Python, Java, and .NET
- Use existing IDE, testing tools, and workflow patterns

<img src="https://i.imgur.com/STuD3Cu.png" alt="5"/>

#### AWS Elastic Beanstalk

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

#### AWS Developer Tools

The developer tools are used in continuous integration and continuous delivery.

<img src="https://i.imgur.com/3MKUVBf.png" alt="5"/>

<img src="https://i.imgur.com/jbGDdNB.png" alt="5"/>

<img src="https://i.imgur.com/xKDRult.png" alt="5"/>

<img src="https://i.imgur.com/DvQHWF2.png" alt="5"/>

#### AWS X-Ray

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

#### AWS OpsWorks

<img src="https://i.imgur.com/7woevpY.png" alt="5"/>

**References**

- https://digitalcloud.training/aws-cloud-computing-concepts/
- https://digitalcloud.training/aws-global-infrastructure/
- https://digitalcloud.training/aws-billing-and-pricing/
- https://digitalcloud.training/aws-compute-services/