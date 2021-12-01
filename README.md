# FaaS-GraalVM-Env

Repository of the Master's Thesis - "Photons@Graal - Enabling Efficient Function-as-a-Service on GraalVM"

- openwhisk-devtools 
    - contains docker-compose + makefile deployment of OpenWhisk 1.0.0 
    - some scripts to benchmark functions on the environment
    
- FunctionRunner    
    - Main code of the function runner library
    - Runs functions inside Isolates, to allow concurrent function invocation with strict data isolation
    - Intended to be used with some sort of HTTP wrapper on top

- openwhisk-faas-graalvm-base
    - Simple openwhisk-complient base structure to run functions with FunctionRunner
    - Intended to be used as a library to be bundled with the function to be run, since it needs to be compiled AOT

- graalvm-builds
  - Contains base Dockerfile of a Photons@Graal-enabled function
  - Script to build a Photons@Graal-enabled function

- Photons-Original
  - Base code of https://rodrigo-bruno.github.io/papers/vdukic-socc20.pdf
  - some changes
    - Java 11 bump
    - Metrics collection (Micrometer)
