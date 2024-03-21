# Spring PetClinic Sample Application
step 1: -> created jenkinsfile which helps in continous integration
step 2: -> Package the project as a runnable Docker image 
step 3 : -> added the security steps like-> static code analysis for SonarQuebe and Trivy as image scanner
step 4 : -> docker build and published repository 

How to run project:
step 1: install docker on your machine
step 2 : pull this image using this command docker pull avinashbasoorbs/petclinic:latest
step 3 : docker run  -p 9000:8080 -itd  petclinc:latest
application running on the port 8080 u can do the port forwording

You can then access the Petclinic at
http://35.154.111.66:9000/ 
    
