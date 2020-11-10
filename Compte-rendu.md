# Devops

# TP1
Create a 3-tiers app:
- HTTP server
- Backend API
- Database

## Download the containers images
The PostgreSQL object-relational database system provides reliability and data integrity.
- docker pull postgres

OpenJDK is an open-source implementation of the Java Platform, Standard Edition
- docker pull openjdk

The Apache HTTP Server Project
- docker pull httpd

Database management in a single PHP file.
- docker pull adminer

## Create The database :

Database folder:
    Dockerfile
    
    FROM postgres:11.6-alpine
    
    ENV POSTGRES_DB=db \
        POSTGRES_USER=usr \
        POSTGRES_PASSWORD=pwd
Creates the postgres DB container image

With docker terminal go to the Dockerfile folder and run :
 
    docker build -t rayukx/tp-database .
   
  Builds the image and calls it rayukx/tp-database from the . folder
  
     docker network create devops
     
  Creates a network called devops. It will allow containers to communicate with each other.
  
    docker run -p 5432:5432 --network=devops --name tp-database rayukx/tp-database 
    
  Creates a DB container out of the image with the name 'tp1-database' and adds it to the devops network
  
On a new terminal :
 
    - docker run --network=devops --link tp-database:db -p 8080:8080 adminer

    - docker run -e POSTGRES_DB=db -e POSTGRES_USER=usr -e POSTGRES_PASWWORD=pwd -p 5432:5432 --network=devops -v data:/var/lib/postgresql/data --name tp-database rayukx/tp-database

 Creates a admirer that helps visualise the DB at URL= 192.168.99.100:8080
    
### ***Why should we run the container with a flag -e to give the environment variables ?***

To secure the variables.

### ***Why do we need a volume to be attached to our postgres container ?***

It acts like a memory, so it saves our database when we quit.

### ***Why do we need a multistage build ?*** ###

To optimize the size of the images.

### ***Why do we need a reverse proxy ?*** ###

We need it to protect the connection from outside.

### ***Why is docker-compose so important ?*** ###

It can centralize all the actions of the dockerfiles and run it with one command line.

### ***Why do we put our images into an online repository ?*** ###

To be saved and usable by other machines.

# TP2

### ***Ok, what is it supposed to do ?***

It will clear the previous builds inside the cache and it will freshly build each module inside your application.

### ***What are testcontainers?***

They are java libraries that allow you to run docker containers while testing.

### ***Why do we need this branch ?***

Allows to differenciate the production and the development.

### ***Secured variables, why ?***

Because we don't want anyone to use the pass.

### ***For what purpose?*** ###

Check the correct operation of the application at each push.

# TP3

### ***What is $basearch?***

It references the base architecture of the system.
