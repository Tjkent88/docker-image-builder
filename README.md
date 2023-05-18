# docker-image-builder

This builds docker images based on repos and publishes them to docker hub

# Usage 

./build-image.sh <repo-with-docker-file> <repo-name>
  

It will create a tmp folder in your current directory pull the repo tag it with today's date and latest and the publish both to docker hub. 
  
  This program does assume that the user is logged into docker already.
  
Eventually I will convert this to an Ansible role, but this is what I came up with on the first round.
