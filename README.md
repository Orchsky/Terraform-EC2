# Plan
- To provision an AWS VPC with public and private subnets (1 of each)
- To provision ubuntu ec2 instance with docker and kubernetes cli installed
- For the installation of the tooling have a bash script

# Breakdown
- VPC:
    - internet gateway
    - subnet (public / private)
    - routing tables:
        - associate public and private subnet routes
        - public route has to have public subnet target igw / subnet association
        - security group:
            - port 22 ssh open
- EC2:
    - image: ubuntu LTS
    - name
    - instance type
    - key pair
    - associate vpc to ec2 via subnet (auto assign public ip)
    - associate security group to vpc
    - bash script:
        - docker installed: [documentation](https://docs.docker.com/engine/install/ubuntu/)
        - kubernetes cli installed: [documentation](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

## Verification
- Navigate to AWS console and verify 
- If we are able to connect to the ubuntu instance
- Verify if docker and kubernetes cli was installed to the machine