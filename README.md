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

<img src="https://i.imgur.com/tbnnlad.png" alt="1" width="80%"/>

#### The AWS shared responsability model defines custormer/AWS responsabilities

- AWS are responsible for "Security **of** the cloud"
  - AWS is responsible for protecting the infrastructure that runs all of the service offered in the AWS Cloud
  - This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services
- Customers are responsibles for "Security **in** the cloud"
  - For EC2 this includes network level security, operating system patches and updates, IAM user access managment, and client and server-side data encryption

<img src="https://i.imgur.com/TxrGIeK.png" alt="1" width="80%"/>

<img src="https://i.imgur.com/Xfq8oNN.png" alt="1" width="80%"/>

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

<img src="https://i.imgur.com/JWSaDi5.png" alt="1" width="80%"/>

#### Users, Groups, Roles and Policies

- IAM User: Is an entity that represents a person or service
- Groups: Groups are collections of users and have policies attached to them, use groups to assign permissions to users.
- Roles: Roles are created and then “assumed” by trusted entities and define a set of permissions for making AWS service requests.
- Policies: Policies are documents that define permissions and can be applied to users, groups, and roles. Policy documents are written in JSON (key value pair that consists of an attribute and a value).

<img src="https://digitalcloud.training/wp-content/uploads/2022/02/iam-users-groups-roles-policies.png" alt="2" width="80%"/>

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

<img src="https://i.imgur.com/H5MaQWO.png" alt="3" width="80%"/>

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

<img src="https://i.imgur.com/pEREcsS.png" alt="4" width="80%"/>
<img src="https://i.imgur.com/OfpqWLs.png" alt="5" width="80%"/>

#### Access Keys

- Access Keys are configured on the EC2 instances
- This is **secret information that is stored on the file system of the instance** (it's not a very secure way of storing that information)
- Access Keys will pick up whatever permissions the policy allows that user

<img src="https://i.imgur.com/vgRCR3k.png" alt="5" width="80%"/>

- Instance profile is a way that we can connect an IAM role to our EC2 instance. That role is then assumed by the EC2 instance and will gain access to whathever permissions the policy attached to the roles provides. The great thing about this is there's **no credentials stored on the EC2 instance**

<img src="https://i.imgur.com/HoWvQTf.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/va96r2E.png" alt="5" width="80%"/>

- There are actually two different types of ECS: Firstly, we have what's called the **EC2 launch type**. With the EC2 launch type, what's happening is you're actually provisioning EC2 instances and then running your containers on top of those instances, that means that you are responsible for managing the EC2 instances on which your containers run. You're charged per running instances, and you can integrate into storage services like EFS and EBS which will talk about a bit later on.

- On the other hand, we have a type of ECS called **Fargate**. With Fargate, AWS is managing the cluster for you. **Fargate is essentially a serverless implementation**, that means you don't have to manage the underlying infrastructure

<img src="https://i.imgur.com/kCqkIhS.png" alt="5" width="80%"/>

## AWS Storage Services

- **Block Storage System**: Is a block-based storage system, a hard drive that's connected to your computer is a good example of a block-based storage sytem. The OS reads and write at the block level

- **File Storage System**: With a file-based storage system we're able to actually mount a file system over a network

- **Object Storage System**: User uploads objects using a web browser and they upload them to a container (like a bucket into which you can put your objects). There's no hierarchy of objects and it uses a REST API. Objects can be files, videos, images etc. Object-based storage are very scalable and very low cost

<img src="https://i.imgur.com/UoaJu5c.png" alt="5" width="80%"/>

<img src="https://i.imgur.com/rRmaBCt.png" alt="5" width="80%"/>

#### Amazon Elastic Block Store (EBS)

- EBS is the storage system that's used by Amazon EC2 and the EBS volume is where OS and any data is stored persistently
- Each EC2 instance can have one or more EBS volume attached to it, but **you can't actually attach multiple intances to an individual volume** (exists EBS multi-attach and it's under some very specific constraints)
- EBS volume live within an availability zone
- The EBS volume data persists independently of the life of the instance
- EBS volumes must be in the **same AZ** as the instances they are attached to
- **Root EBS** volumes **are deleted** on termination by default

<img src="https://i.imgur.com/enljJRB.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/1KO9AsQ.png" alt="5" width="80%"/>

#### EBS vs Instance Store

- Instance Store volumes are **physically attached** to the host
- EBS volumes are **attached over a network** and they are **persistent storage**
- Instance Store are **very high performance**, but they're **non-persistent**

<img src="https://i.imgur.com/wVW9aPK.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/cTtbHbJ.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/MyfJyE5.png" alt="5" width="80%"/>

<img src="https://i.imgur.com/p2PZjgR.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/aNZykhB.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/GCIqgKz.png" alt="5" width="80%"/>

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

<img src="https://i.imgur.com/d8Eq7zx.png" alt="5" width="80%"/>

**References**

- https://digitalcloud.training/aws-cloud-computing-concepts/
- https://digitalcloud.training/aws-global-infrastructure/
- https://digitalcloud.training/aws-billing-and-pricing/
- https://digitalcloud.training/aws-compute-services/