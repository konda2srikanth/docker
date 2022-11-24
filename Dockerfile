FROM    centos:7  
RUN     yum install epel-release -y 
RUN     yum install nginx  -y
EXPOSE  80 
ENV     PROJECT=robot 
ENV     MONGO='mongo-dev.robot.internal'
ADD     sample.txt /opt
CMD     ["nginx", "-g", "daemon off;"]