#Getting Started

#### On the local machine -

- Created Spring Application from Spring Initializer 
- Added Controller 
- To check the app run the KbackednApplication and start server. On browser go to http://localhost:8080/hello.
- To create the jar file run deploy.sh file using the following command on Github CLI -
    ./deploy.sh ./kentarusBackend.pem  ec2-user@ec2-3-142-122-125.us-east-2.compute.amazonaws.com
    This file creates a jar file and then uploads on the server using the keypair from .pem file.

#### Steps to log in to the AWS EC2 instance on a local machine - 
- On the AWS EC2 dashboard select the instance and click on Connect. 
- Connect to your instance using the ssh command mentioned in point 4. Example - ssh -i "kentarusBackend.pem" ec2-user@ec2-3-143-113-69.us-east-2.compute.amazonaws.com
- Type the above command Intellij IDEA IDE Terminal. 
    
#### On the Server -

- There is another deploy.sh to run the Jar file
- Server did not have Java following steps were followed to install Java on Amazon Machine Instance (AMI) [link](https://www.youtube.com/watch?v=DF6UyUWEU4I) -
    -  sudo yum update
    -  sudo amazon-linux-extras install java-openjdk11
    To check if it is installed you can type "java" and "javac"
    
    For a Linux based EC2 use following commands to install Java ([URL](https://www.eternalsoftsolutions.com/blog/how-to-install-java-in-aws-ec2/)) - 
        sudo apt-get update && sudo apt-get upgrade
        sudo apt install default-jre 
   
Once it is up and running go to the AWS EC2 console, click on the connect to instance button and copy the Public DNS form there.
Example - http://ec2-3-143-113-69.us-east-2.compute.amazonaws.com:8080/hello.

#### Steps to stop the Jar on server - 

It can be done programmatically however, just stopping the EC2 instance as of now. 

---
---
#####References - 
1. [Ref 1](https://kgaurav23.medium.com/deploying-hosting-spring-boot-applications-on-aws-ec2-7babc15a1ab6)
