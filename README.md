# buildverse-vck

Things we need to make our Wordpress as HA(High avilability) 

1.	A highly available architecture that spans two Availability Zones.*
2.	A virtual private cloud (VPC) configured with public and private subnets according to AWS best practices. This provides the network infrastructure for your deployment.*
3.	An internet gateway to provide access to the internet. This gateway is used by the bastion hosts to send and receive traffic.*
4.	In the public subnets, managed NAT gateways to allow outbound internet access for resources in the private subnets.*
5.	In the public subnets, Linux bastion hosts in an Auto Scaling group to allow inbound Secure Shell (SSH) access to EC2 instances in public and private subnets.*
6.	Elastic Load Balancing (ELB) to distribute HTTP and HTTPS requests across multiple WordPress instances.
7.	In the private subnets, EC2 instances that host the WordPress application on Apache. These instances are provisioned in an Auto Scaling group to ensure high availability.
8.	In the private subnets, Aurora DB instances administered by Amazon Relational Database Service (Amazon RDS).
9.	In the private subnets, Amazon Elastic File System (Amazon EFS) to share assets (such as plugins, themes, and images) across WordPress instances.

#Execute and build a dockerimage use the below command

sh ./build-ansible-image.sh


