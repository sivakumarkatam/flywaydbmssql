#!/bin/bash
aws --region ap-southeast-1 ssm get-parameters --names "flyuser" --with-decryption | awk 'match($0, /"Value":.*/) { print substr($0, RSTART, RLENGTH) }'| cut -d '"' -f4 | sudo tee user
username=$(cat user)

aws --region ap-southeast-1 ssm get-parameters --names "flypassword" --with-decryption | awk 'match($0, /"Value":.*/) { print substr($0, RSTART, RLENGTH) }'| cut -d '"' -f4 | sudo tee pwd
password=$(cat pwd)
cd /tmp/
mvn compile flyway:migrate -Ddatabaseuser=$username -Ddatabasepassword=$password
