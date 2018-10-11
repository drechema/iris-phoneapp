# iris-phoneapp

Simple IRIS App with an API ready to use

## setup:

- Imports classes to USER namespace
- Run from USER namespace

```
do ##class(demo.setup).setup()
```

This setup will create a new CSP Application (by default named /csp/phoneapp/api at USER namespace) if you want to use a different name or namespace use *setup(namespace,webappname)*

After the setup could be necessary assign appropiate roles to the /csp/phoneapp/api application

## demo:
- Use POSTMAN or similar to send the HTTP requests

``` 
GET http://localhost:52773/phoneapp/api/phones                  <-- Test the phoneapp API
GET http://localhost:52773/api/mgmnt/                           <-- Discover the existing APIS
GET http://localhost:52773/api/mgmnt/v1/DEMO/spec/phoneapp/api	<-- Get the Swagger Spec for API
```
