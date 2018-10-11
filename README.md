# iris-phoneapp

Simple IRIS App with an API ready to use

## setup:

- Imports classes
- Run:

´´´
	do ##class(demo.setup).setup()
´´´

Set DispacthClass at /phoneapp/api csp application

## demo:
- Use POSTMAN or similar to send the HTTP requests

´´´ 
GET http://localhost:57774/phoneapp/api/phones					<-- Test the phoneapp API
GET http://localhost:57774/api/mgmnt/ 							<-- Discover the existing APIS
GET http://localhost:57774/api/mgmnt/v1/DEMO/spec/phoneapp/api	<-- Get the Swagger Spec for API
´´´
