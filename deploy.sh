#!/usr/bin/env bash
echo "=========================================="
echo "Key: ${1}"
echo "EC2 URI ${2}"
echo "=========================================="

rm -rf target/
echo "Deleted target/ folder"
echo "=========================================="
# TWEAK JAR BUILD COMMAND FOR GRADLE BUILDS
echo "Generating jar file"
"./mvnw" install
echo "=========================================="


#Copy execute_commands_on_ec2.sh file which has commands to be executed on server... Here we are copying this file
# every time to automate this process through 'deploy.sh' so that whenever that file changes, it's taken care of
echo Exec: scp -i $1 resources/ec2-run-jar.sh "${2}:.":
scp -i $1 resources/ec2-run-jar.sh "${2}:."
echo "Copied latest resources file from local machine to ec2 instance"
echo "=========================================="

# TWEAK JAR PATH FOR GRADLE BUILDS
echo Exec: scp -i $1 target/kbackend-0.0.1-SNAPSHOT.jar "${2}:."
scp -i $1 target/kbackend-0.0.1-SNAPSHOT.jar "${2}:."
echo "Copied jar file from local machine to ec2 instance"
echo "=========================================="


echo "Connecting to ec2 instance and starting server using java -jar command"
ssh -i $1 $2 ./ec2-run-jar.sh
echo "=========================================="