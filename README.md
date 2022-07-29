## Table of Contents
- [Cloud Computing and AWS](#cloud-computing-and-AWS)
- [AWS Identity and Access Managment](#aws-identity-and-access-managment)
- [AWS Compute Services](#aws-compute-services)


### Cloud Computing and AWS

| **Cloud Computing**     | **Traditional IT**                              |
|-------------------------|-------------------------------------------------|
| On-demand, self service | Requires human involvement                      |
| Broad network access    | Internal accessibility, limited public presence |
| Resourse Pooling        | Single-tenant, can be virtualized               |
| Rapid elasticity        | Limited scalability                             |
| Measured service        | Usage is not tipically measured                 |

**There are 3 types of cloud computing model:**

- Infrastructure as a service (IaaS): Managed up to the OS
- Platform as a service (PaaS): Managed up to the code
- Software as a service (SaaS): Pure consumption model 

**There are 4 types of cloud deployment:**

- Public Cloud or simple "Cloud" - e.g. AWS, Azure, Google Cloud Platform
- Hybrid Cloud, mixture of public and private clouds
- Private Cloud (on-premise), managed in your own data center, e.g. Hyper-V, OpenStack, VMware
- Multicloud, use private/public clouds from multiple providers 

**Fundamentals of pricing:**

- Compute: CPU/RAM and duration
- Storage: quantity of data stored or allocated
- Outbound data transfer: data leaving an AWS Region

**The AWS Global Infrastructure is made up of:**

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

**The AWS shared responsability model defines custormer/AWS responsabilities:**

- AWS are responsible for "Security **of** the cloud"
  - AWS is responsible for protecting the infrastructure that runs all of the service offered in the AWS Cloud
  - This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services
- Customers are responsibles for "Security **in** the cloud"
  - For EC2 this includes network level security, operating system patches and updates, IAM user access managment, and client and server-side data encryption

**The 6 advantages of cloud:**

- Trade capital expense for variable expense
- Benefit from massive economies of scale
- Scale guessing about capacity
- Increase speed and agility
- Stop spending money money running and maintaining data centers
- Go global in minutes

**References:**

- https://digitalcloud.training/aws-cloud-computing-concepts/
- https://digitalcloud.training/aws-global-infrastructure/
- https://digitalcloud.training/aws-billing-and-pricing/

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

<img src="https://i.imgur.com/39XryvM.png" alt="1" width="50%"/>

**Users, Groups, Roles and Policies**

- IAM User: Is an entity that represents a person or service
- Groups: Groups are collections of users and have policies attached to them, use groups to assign permissions to users.
- Roles: Roles are created and then “assumed” by trusted entities and define a set of permissions for making AWS service requests.
- Policies: Policies are documents that define permissions and can be applied to users, groups, and roles. Policy documents are written in JSON (key value pair that consists of an attribute and a value).

<img src="https://digitalcloud.training/wp-content/uploads/2022/02/iam-users-groups-roles-policies.png" alt="2" width="50%"/>

**IAM Best Practices**

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

<img src="https://digitalcloud.training/wp-content/uploads/2022/02/ec2-instance-launch-1.png" alt="3" width="50%"/>

**Benefits of Amazon EC2**

- Elastic computing: easily launch hundreds to thousands of EC2 instances within minutes
- Completed control: you control the EC2 instances with full root/administrative access
- Flexible: choice of instance types, operating systems, and software packages
- Reliable: EC2 offers very high levels of availability and instances can be rapidly commissioned and replaced
- Secure: fully integrated with Amazon VPC and sewcurity features
- Inexpensive: low cost, pay for what you use
- porque chii :)

**User Data & Metadata**

- User Data gives you the ability to run commands when the system is starting and metadata can return
- Metadata can return information about the instance that's recorded locally

<img src="https://i.imgur.com/mN5B7kM.png" alt="4" width="50%"/>
<img src="https://i.imgur.com/v7nm1uP.png" alt="5" width="50%"/>