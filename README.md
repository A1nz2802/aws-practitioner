## Table of Contents
- [Cloud Computing and AWS](#cloud-computing-and-AWS)
  - [Cloud Computing vs Traditional IT](#cloud-computing-vs-traditional-it)
  - [There are 3 types of cloud computing model](#there-are-3-types-of-cloud-computing-model)
  - [There are 4 types of cloud deployment](#there-are-4-types-of-cloud-deployment)
  - [Fundamentals of pricing](#fundamentals-of-pricing)
  - [The AWS Global Infrastructure is made up of](#the-aws-global-infrastructure-is-made-up-of)
  - [The AWS shared responsability model defines custormer/AWS responsabilities](#the-aws-shared-responsability-model-defines-custormer-/-aws-responsabilities)
  - [The 6 advantages of cloud](#the-6-advantages-of-cloud)
- [AWS Identity and Access Managment](#aws-identity-and-access-managment)
  - [Users, Groups, Roles and Policies](#users,-groups,-roles-and-policies)
  - [IAM Best Practices](#iam-best-practices)
- [AWS Compute Services](#aws-compute-services)
  - [Benefits of Amazon EC2](#benefits-of-amazon-ec2)
  - [User Data & Metadata](#user-data-&-metadata)
  - [Access Keys](#access-keys)
  - [AWS Batch](#aws-batch)
  - [Amazon LightSail](#amazon-lightsail)
  - [Amazon Elastic Container Service (ECS)](#amazon-elastic-container-service-(ecs))


### Cloud Computing and AWS

##### Cloud Computing vs Traditional IT

| **Cloud Computing**     | **Traditional IT**                              |
|-------------------------|-------------------------------------------------|
| On-demand, self service | Requires human involvement                      |
| Broad network access    | Internal accessibility, limited public presence |
| Resourse Pooling        | Single-tenant, can be virtualized               |
| Rapid elasticity        | Limited scalability                             |
| Measured service        | Usage is not tipically measured                 |

##### There are 3 types of cloud computing model

- Infrastructure as a service (IaaS): Managed up to the OS
- Platform as a service (PaaS): Managed up to the code
- Software as a service (SaaS): Pure consumption model 

##### There are 4 types of cloud deployment

- Public Cloud or simple "Cloud" - e.g. AWS, Azure, Google Cloud Platform
- Hybrid Cloud, mixture of public and private clouds
- Private Cloud (on-premise), managed in your own data center, e.g. Hyper-V, OpenStack, VMware
- Multicloud, use private/public clouds from multiple providers 

##### Fundamentals of pricing

- Compute: CPU/RAM and duration
- Storage: quantity of data stored or allocated
- Outbound data transfer: data leaving an AWS Region

##### The AWS Global Infrastructure is made up of

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

##### The AWS shared responsability model defines custormer/AWS responsabilities

- AWS are responsible for "Security **of** the cloud"
  - AWS is responsible for protecting the infrastructure that runs all of the service offered in the AWS Cloud
  - This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services
- Customers are responsibles for "Security **in** the cloud"
  - For EC2 this includes network level security, operating system patches and updates, IAM user access managment, and client and server-side data encryption

<img src="https://i.imgur.com/TxrGIeK.png" alt="1" width="80%"/>

<img src="https://i.imgur.com/Xfq8oNN.png" alt="1" width="80%"/>

##### The 6 advantages of cloud

- Trade capital expense for variable expense
- Benefit from massive economies of scale
- Scale guessing about capacity
- Increase speed and agility
- Stop spending money money running and maintaining data centers
- Go global in minutes

### AWS Identity and Access Managment

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

##### Users, Groups, Roles and Policies

- IAM User: Is an entity that represents a person or service
- Groups: Groups are collections of users and have policies attached to them, use groups to assign permissions to users.
- Roles: Roles are created and then “assumed” by trusted entities and define a set of permissions for making AWS service requests.
- Policies: Policies are documents that define permissions and can be applied to users, groups, and roles. Policy documents are written in JSON (key value pair that consists of an attribute and a value).

<img src="https://digitalcloud.training/wp-content/uploads/2022/02/iam-users-groups-roles-policies.png" alt="2" width="80%"/>

##### IAM Best Practices

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

### AWS Compute Services

- Amazon Elastic Compute Cloud (Amazon EC2) is a web service with which you can run virtual server “instances” in the cloud.
- Amazon EC2 instances can run the Windows, Linux, or MacOS operating systems.
- The EC2 simple web service interface allows you to obtain and configure capacity with minimal friction.
- EC2 is designed to make web-scale cloud computing easier for developers.
- Amazon EC2 changes the economics of computing by allowing you to pay only for capacity that you use.
- Amazon EC2 provides developers the tools to build failure resilient applications and isolate them from common failure scenarios.

<img src="https://i.imgur.com/H5MaQWO.png" alt="3" width="80%"/>

##### Benefits of Amazon EC2

- Elastic computing: easily launch hundreds to thousands of EC2 instances within minutes
- Completed control: you control the EC2 instances with full root/administrative access
- Flexible: choice of instance types, operating systems, and software packages
- Reliable: EC2 offers very high levels of availability and instances can be rapidly commissioned and replaced
- Secure: fully integrated with Amazon VPC and sewcurity features
- Inexpensive: low cost, pay for what you use

##### User Data & Metadata

- User Data gives you the ability to run commands when the system is starting
- Metadata can return information about the instance that's recorded locally

<img src="https://i.imgur.com/pEREcsS.png" alt="4" width="80%"/>
<img src="https://i.imgur.com/OfpqWLs.png" alt="5" width="80%"/>

##### Access Keys

- Access Keys are configured on the EC2 instances
- This is **secret information that is stored on the file system of the instance** (it's not a very secure way of storing that information)
- Access Keys will pick up whatever permissions the policy allows that user

<img src="https://i.imgur.com/vgRCR3k.png" alt="5" width="80%"/>

- Instance profile is a way that we can connect an IAM role to our EC2 instance. That role is then assumed by the EC2 instance and will gain access to whathever permissions the policy attached to the roles provides. The great thing about this is there's **no credentials stored on the EC2 instance**

<img src="https://i.imgur.com/HoWvQTf.png" alt="5" width="80%"/>

##### AWS Batch 

- AWS Batch is a service that we can use to run what's called a batch workload on AWS

<img src="https://miro.medium.com/max/1200/0*LhyLjfye1TUn341e" alt="5" width="90%"/>

##### Amazon LightSail

- Amazon LightSail is another compute service, and it's very similar to EC2. This service gives you the ability to run virtual servers in the cloud just like EC2 does. The difference is that the interface for it is a lot simpler to use for those who don't really have a strong background in technology. **AWS call it the simple cloud server**
- Low cost and ideal for users with less technical expertise
- It allows compute storage, networking services, virtual servers, database services, and it does support load balancing as well
- You can connect in using the Secure Shell Protocol or the Remote Desktop Protocol for Windows instances. Can access Amazon VPC.

<img src="https://i.imgur.com/bJtK82h.png" alt="5" width="50%"/>

##### Amazon Elastic Container Service (ECS)

- ECS is a highly scalable, high-performance container orchestration service on AWS
- In ECS we call it a **task** rather than a container, but it's essentially the same thing
- Each **task** has something called a **task definition**. The task definition describes how the task should be configured and where to get the image from that's the actual code which the container runs
- The **registry** is where the image is stored
- A **service** is a way that we can maintain a desired count of tasks. We can create a service and define that we always want to have four tasks running, if one fails, then it just creates another one for us. Where do these actual tasks run? They run on container instances (essentially running on EC2 instances)

<img src="https://i.imgur.com/va96r2E.png" alt="5" width="80%"/>

- There are actually two different types of ECS: Firstly, we have what's called the **EC2 launch type**. With the EC2 launch type, what's happening is you're actually provisioning EC2 instances and then running your containers on top of those instances, that means that you are responsible for managing the EC2 instances on which your containers run. You're charged per running instances, and you can integrate into storage services like EFS and EBS which will talk about a bit later on.

- On the other hand, we have a type of ECS called **Fargate**. With Fargate, AWS is managing the cluster for you. **Fargate is essentially a serverless implementation**, that means you don't have to manage the underlying infrastructure

<img src="https://i.imgur.com/kCqkIhS.png" alt="5" width="80%"/>

**References**

- https://digitalcloud.training/aws-cloud-computing-concepts/
- https://digitalcloud.training/aws-global-infrastructure/
- https://digitalcloud.training/aws-billing-and-pricing/
- https://digitalcloud.training/aws-compute-services/