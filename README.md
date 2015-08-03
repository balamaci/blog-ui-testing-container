# Visual Regresion testing automation

Sources for the blog article in which we propose a solution for the automatization of visual testing a web application.

We build upon the previous [article]().

We dropped the previous setup which proposed to "manually" start and deploy, in favour of a more standard way by using 
**Docker Compose**.


## Prerequisites to running yourself locally  
  
  - Docker 
  - phantomjs 
  We already talked about installing them in [here]
  - Imagemagick - helps us with obtaining a "diff" image between the . Installs as simple as "apt-get install  

## Running the tests
After all the prerequisites have been met you can run:
  mvn -D clean verify 

  mvn clean verify 

## Conclusion
  Easy way to .
  
