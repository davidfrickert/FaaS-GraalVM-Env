# FaaS-GraalVM-Env

Repository of the Master's Thesis - "Photons@Graal - Enabling Efficient Function-as-a-Service on GraalVM"

- openwhisk-devtools 
    - contains docker-compose + makefile deployment of OpenWhisk 1.0.0 
    - some scripts to benchmark functions on the environment
    
- FunctionRunner    
    - Main code of the functio 

- Base-Function
  - Example function to run
  
- graalvm-builds
  - Contains base Dockerfile of a Photons@Graal-enabled function
  - Script to build a Photons@Graal-enabled function

- Photons-Original
  - Base code of https://rodrigo-bruno.github.io/papers/vdukic-socc20.pdf
  - some changes
    - Java 11 bump
    - Metrics collection (Micrometer)
