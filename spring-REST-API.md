# Web Servers, APIs, and HTTP Protocols

## Web Server
A web server is a process running on a computer that listens for incoming requests for information over the internet and sends back responses.

## HTTP Protocol
The specific format of a request (and the resulting response) is called the protocol. One common protocol used to access websites is HTTP (Hypertext Transfer Protocol), a request-response protocol that facilitates data exchange between a client (e.g., website, mobile app) and a server.

### HTTP Request-Response Cycle:
1. The client submits an HTTP request message to the server.
2. The server processes the request and performs the required operations.
3. The server returns a response message to the client containing the relevant data.

## Databases
- **Relational Databases**: Store information in tables with columns and rows.
- **Non-Relational Databases**: Use other models such as key-value pairs or document storage.
- **SQL (Structured Query Language)**: Used for accessing and modifying relational databases.

## Web API
A **Web API (Application Programming Interface)** provides a set of predefined ways (rules) for interacting with a web application’s data, typically through HTTP requests.

### Features:
- Defines communication rules.
- Provides a structured interface without exposing internal workings.
- Enables interaction with applications using standardized methods.

### Examples:
- **Elevator Analogy**: Pressing a button selects a floor without knowing the mechanics.
- **Restaurant Analogy**: The waiter (API) takes an order and delivers it to the kitchen (backend) to provide the customer with their meal(frontend).

### Uses of APIs:
- Store and provide useful data.
- Perform complex functions without exposing details.
- Convert data types (e.g., .avi to .mp4).

### Why Not Share Source Code?
- Requires programming knowledge.
- Protects intellectual property.
- Allows flexibility in interpreting results.

## REST API (Representational State Transfer)
A set of constraints and principles, used for designing web services to allow clients to interact with resources using HTTP methods.

### REST Principles:
- **Client-Server Architecture**: Requests are managed through HTTP.
- **Uniform Data Format**: Common formats include HTML, JSON, XML, or plain text.
- **Statelessness**: Each request is independent, improving scalability.
- **Representational Data**: Data represents resources in a readable format.

### CRUD Operations in REST:
- **Create (C)**: New data.
- **Read (R)**: Retrieve data.
- **Update (U)**: Modify existing data.
- **Delete (D)**: Remove data.

## Authentication vs. Authorization
- **Authentication**: Verifies the identity of users (e.g., login with username and password).
- **Authorization**: Controls user access to resources and actions.

## JSON (JavaScript Object Notation)
A lightweight, language-independent data format for storing and exchanging information.

## HTTP Request Components
- **Method**: Defines the request type (e.g., GET, POST, PUT, DELETE).
- **Path**: Specifies the resource location.
- **Headers**: Provide additional request metadata (e.g., authentication).
- **Body**: Contains data sent to the server.

### Common HTTP Methods:
| Method  | Path       | Action   |            Result             |
|---------|-----------|----------|:------------------------------:|
| GET     | /path     | INDEX    |    Retrieve a list of data    |
| GET     | /path/{id}| SHOW     |  Retrieve a single instance   |
| POST    | /path     | CREATE   |      Create an instance       |
| PUT/PATCH | /path/{id} | UPDATE |  Modify an existing instance  |
| DELETE  | /path/{id}| DELETE   |      Remove an instance       |

## HTTP Response
- **Status Code**: Indicates request success or failure.
- **Status Message**: Describes the request outcome.

### HTTP Status Codes:
- **1xx** - Information 📝
- **2xx** - Success 👍
- **3xx** - Redirection 🚚
- **4xx** - Client Error ❌
- **5xx** - Server Error 🔥

| Status Code | Meaning |
|------------|---------|
| **200 OK** | The request was successful. |
| **201 Created** | The request was successful, and a new resource was created. |
| **204 No Content** | The request was successful, but there is no content to return. |
| **301 Moved Permanently** | The resource has been permanently moved to a new URL. |
| **302 Found** | The resource is temporarily available at a different URL. |
| **400 Bad Request** | The server could not understand the request due to invalid syntax. |
| **401 Unauthorized** | Authentication is required and has failed or not been provided. |
| **403 Forbidden** | The client does not have permission to access the resource. |
| **404 Not Found** | The requested resource could not be found on the server. |
| **405 Method Not Allowed** | The requested HTTP method is not supported for the resource. |
| **409 Conflict** | The request conflicts with the current state of the resource. |
| **500 Internal Server Error** | A generic error indicating the server encountered an unexpected condition. |
| **502 Bad Gateway** | The server received an invalid response from an upstream server. |
| **503 Service Unavailable** | The server is currently unable to handle the request due to overload or maintenance. |
| **504 Gateway Timeout** | The server did not receive a timely response from an upstream server. |


## URL Structure
![image](https://github.com/user-attachments/assets/8e17e718-e24d-4de4-9a91-e8246b6e4937)

**Scheme** - the protocol(method for exchanging or transferring data around a computer network) the browser must use to request the resource. Usually for websites the protocol is HTTPS or HTTP (its unsecured version).

**Domain** - indicates which Web server is being requested. Usually this is a domain name, but an IP address may also be used.

**Port** - indicates the technical "gate" used to access the resources on the web server. It is usually omitted if the web server uses the standard ports of the HTTP protocol (80 for HTTP and 443 for HTTPS) to grant access to its resources.

**Authority** - includes the domain(`www.example.com`) and port (`80`)

**Resource path** - the path to the resource on the Web server.

**Parameters** - extra parameters provided to the server. Those parameters are a list of key/value pairs separated with the & symbol.

**Anchor** -  another part of the resource itself. An anchor represents a sort of "bookmark" inside the resource, giving the browser the directions to show the content located at that "bookmarked" spot. On an HTML document, for example, the browser will scroll to the point where the anchor is defined

## Hypermedia Controls
Hypermedia provides additional links in responses, including:
- Available resources.
- Pagination links.
- Related data.

## Other Types of APIs

### Remote Procedure Call (RPC)
A protocol that enables a program to execute procedures on a remote system as if they were local.

#### Variants:
- **SOAP (Simple Object Access Protocol)**: Uses XML for structured communication.
- **gRPC**: Developed by Google, utilizes HTTP/2 and Protocol Buffers.
- **JSON-RPC**: Lightweight alternative using JSON.

### GraphQL (Graph Query Language)
A query language that allows clients to request only the data they need, reducing unnecessary data transfer.

## Event-Driven APIs (Asynchronous)

### Characteristics:
- **Non-blocking**: Doesn’t wait for a response before continuing.
- **Decoupled**: Sender and receiver are independent.
- **Scalable**: Efficiently handles high loads.

### Benefits:
- Improved performance.
- Efficient resource usage.
- Real-time system responsiveness.

--- 

## @RequestMapping and @RequestParam
**Using @RequestMapping for URL mapping**
```java
@RequestMapping("/hello")
public String sayHello() {
    return "Hello, World!";
}
```

URL - `http://localhost:8080/hello`

```java
@RequestMapping(value = "/users", method = RequestMethod.GET)
public List<User> getUsers() {
    // Return a list of users
}
```
URL - `http://localhost:8080/users`

**Using path variables in mapping**
```java
@RequestMapping("/users/{id}")
public User getUserById(@PathVariable("id") Long id) {
    // Retrieve user by ID
}
```

URL - `http://localhost:8080/users/1`

```java
@RequestMapping("/products/{category}/{id}")
public Product getProduct(@PathVariable("category") String category, @PathVariable("id") Long id) {
    // Retrieve product by category and ID
}
```

URL - `http://localhost:8080/products/electronics/123`

**Using @RequestParam for query parameters**
```java
@RequestMapping("/search")
public String search(@RequestParam("keyword") String keyword) {
    return "Search results for: " + keyword;
}
```

URL - `http://localhost:8080/search?keyword=spring`

```java
@RequestMapping("/filter")
public String filterProducts(@RequestParam("category") String category, @RequestParam("price") double price) {
    return "Filtering products in category: " + category + " with price <= " + price;
}
```

URL - `http://localhost:8080/filter?category=books&price=50`

Use `@PathVariable` for identifying a specific resource.

Use `@RequestParam` for extracting query parameters from the URL. These are typically optional or used for filtering/sorting.  

@RequestMapping annotation to better represent the semantics of the annotated methods. The use of `@GetMapping`, `@PostMapping`, `@PutMapping`, `@PatchMapping` and `@DeleteMapping` should be preferred to the use of the raw `@RequestMapping(method = RequestMethod.XYZ)`.  
```java
@RequestMapping(method = RequestMethod.GET,path = "/hello-world")
public String helloWorld() {
    return "Hello World";
}
``` 


## Validations
```xml
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-validation</artifactId>
		</dependency>
```

```java
    @Size(min = 2, message = "Name should be at least 2 characters")
    private String name;

    @Past(message = "Birth date should be in the past")
    private LocalDate birthDate;
```

Spring Boot throws a `MethodArgumentNotValidException` if the validation fails on a request body in a Spring REST controller and returns a 400 BAD REQUEST.

## Documentation
```xml
<dependency>
	<groupId>org.springdoc</groupId>
	<artifactId>springdoc-openapi-starter-webmvc-ui</artifactId>
	<version>2.7.0</version>
</dependency>
```

`http://localhost:8080/swagger-ui/index.html`  
`http://localhost:8080/v3/api-docs`
