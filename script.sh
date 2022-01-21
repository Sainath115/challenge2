#!/bin/bash

 

read -p 'Enter valid key: ' key

 

echo $key

curl -s 'http://169.254.169.254/metadata/instance/compute?api-version=2021-02-01' -H Metadata:true | jq --raw-output -r ".${key}"

 

 
