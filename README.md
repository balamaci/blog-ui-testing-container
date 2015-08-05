# Visual Regresion testing automation

Sources for the blog article [Docker containers for Visual Regression Testing setup](http://balamaci.ro/docker-container-for-visual-regression-testing/) 
in which we propose a container for the automatization of visual testing a web application.

We improved upon the previous [article](http://balamaci.ro/visual-testing-automation/) which **used maven plugins along with a .sh file to start a docker container**
and also required the reader to install 3rd party dependencies like **imagemagick** and **phantomjs**(which requires nodejs).

We propose instead to

- Package all the above dependencies in a standard way by creating a new docker image named **ui-tests** .
- Use [Docker Compose](https://github.com/docker/compose) as a way to start the container(base upon  and link it to a generic **Tomcat** container.
- We still rely on **maven-cargo-plugin** to deploy the war to a **Tomcat**(or whatever web app container we choose). 
    
We've added **pippo-demo.war** file alongside to be easier to try it out. In a realcase scenario it will be built in another step and maybe have it copied in this job by Jenkins
or pulled from a repository.


## Prerequisites to running yourself locally  
  
- **docker** and **docker-compose** which are detailed again in the blog article 
- the container image file. We prepared **docker-images-build.sh** to build locally the required images. We could have 
  pushed them also to the docker [registry](https://registry.hub.docker.com/), but I'd hate to take so much space.

## Running the tests
After all the prerequisites have been met you can run:
```  
  # docker-compose mvn -DflagUpdateReferenceScreenshots=true clean verify  
```

stopping the container and cleaning up
```  
  # docker-compose stop
  # docker-compose rm
```

  
