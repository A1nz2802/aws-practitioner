
## 1. Traditional IT vs Cloud Computing

| **Cloud Computing**     | **Traditional IT**                              |
|-------------------------|-------------------------------------------------|
| On-demand, self service | Requires human involvement                      |
| Broad network access    | Internal accessibility, limited public presence |
| Resourse Pooling        | Single-tenant, can be virtualized               |
| Rapid elasticity        | Limited scalability                             |
| Measured service        | Usage is not tipically measured                 |


## 2. AWS Exam Cram

#### There are 3 types of cloud computing model:

- Infrastructure as a service (IaaS): Managed up to the OS
- Platform as a service (PaaS): Managed up to the code
- Software as a service (SaaS): Pure consumption model 

#### There are 4 types of cloud deployment:

- Public Cloud or simple "Cloud" - e.g. AWS, Azure, Google Cloud Platform
- Hybrid Cloud, mixture of public and private clouds
- Private Cloud (on-premise), managed in your own data center, e.g. Hyper-V, OpenStack, VMware
- Multicloud, use private/public clouds from multiple providers 

#### Fundamentals of pricing:

- Compute: CPU/RAM and duration
- Storage: quantity of data stored or allocated
- Outbound data transfer: data leaving an AWS Region

#### The AWS Global Infrastructure is made up of:

- AWS Regions
  - A region is a geographical area
  - Each region consists of 2 or more availability zones
  - Isolated from other AWS Regions
- Availability Zones
  - Availability zones are physically separate and isolated from each other
  - AZs span one or more data centers
  - Each AZ is designed as an indepent failure zone
- Local zones
  - AWS Local Zones place compute, storage, database, and other select AWS services closer to end-users
  - Extension of an AWS Region where you can run your latency sensitive applications.
- Edge Locations and Regional Edge Caches
  - Edge locations are Content Delivery Network (CDN) endpoints for CloudFront
  - There are many more edge locations than regions
  - Regional Edge Caches sit between your CloudFront Origin servers and the Edge Locations
  - A Regional Edge Cache has a larger cache-width than each of the individual Edge Locations

#### The AWS shared responsability model defines custormer/AWS responsabilities

- AWS are responsible for "Security **of** the cloud"
  - AWS is responsible for protecting the infrastructure that runs all of the service offered in the AWS Cloud
  - This infrastructure is composed of the hardware, software, networking, and facilities that run AWS Cloud services
- Customers are responsibles for "Security **in** the cloud"
  - For EC2 this includes network level security, operating system patches and updates, IAM user access managment, and client and server-side data encryption

#### The 6 advantages of cloud:

- Trade capital expense for variable expense
- Benefit from massive economies of scale
- Scale guessing about capacity
- Increase speed and agility
- Stop spending money money running and maintaining data centers
- Go global in minutes

#### References:

- https://digitalcloud.training/aws-cloud-computing-concepts/
- https://digitalcloud.training/aws-global-infrastructure/
- https://digitalcloud.training/aws-billing-and-pricing/

## 3. AWS Identity and Access Managment (IAM)

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

![1](https://i.imgur.com/39XryvM.png)

#### Users, Groups, Roles and Policies

- IAM User: Is an entity that represents a person or service
- Groups: Groups are collections of users and have policies attached to them, use groups to assign permissions to users.
- Roles: Roles are created and then “assumed” by trusted entities and define a set of permissions for making AWS service requests.
- Policies: Policies are documents that define permissions and can be applied to users, groups, and roles. Policy documents are written in JSON (key value pair that consists of an attribute and a value).

![2](https://digitalcloud.training/wp-content/uploads/2022/02/iam-users-groups-roles-policies.png)

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
