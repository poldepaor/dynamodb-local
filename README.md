# dynamodb-local

### Build
You can build the container with a simple ```docker build .```

### Run
Start a Dynamodb local instance

    $ docker run -p 8000:8000 poldepaor/dynamodb-local-configurable:latest
    Initializing DynamoDB Local with the following configuration:
    Port:    8000
    InMemory:    false
    DbPath:    /dynamodb_local_db
    SharedDb:    true
    shouldDelayTransientStatuses:    false
    CorsParams:    *

## Environment Variables
#### JAVA_OPTS
This optional environment variable can be used to set JVM options.

Example usage:
</br>
```docker run -p 8000:8000 -e JAVA_OPTS='-Dcom.sun.net.ssl.checkRevocation=false' poldepaor/dynamodb-local-configurable:latest```
</br>
#### DYNAMODB_PORT

This optional environment variable can be used to overwrite the default port (8000).

Example usage: 
</br>
```docker run -e DYNAMODB_PORT=443 -p 8000:443 poldepaor/dynamodb-local-configurable:latest```
