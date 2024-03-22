# Spring PetClinic Sample Application
step 1: -> created jenkinsfile which helps in continous integration <br />
step 2: -> Package the project as a runnable Docker image <br />
step 3 : -> added the security steps like-> static code analysis for SonarQuebe and Trivy as image scanner <br />
step 4 : -> docker build and published repository <br /> 

How to run project:
step 1: install docker on your machine <br />
step 2 : pull this image using this command docker pull avinashbasoorbs/petclinic:latest <br />
step 3 : docker run  -p 9000:8080 -itd  petclinc:latest <br />
application running on the port 8080 u can do the port forwording <br />

You can then access the Petclinic at <br />
http://35.154.111.66:9000/ 
    
