## Spring MVC
Spring MVC (Model-View-Controller) is a part of the Spring Framework used for building web applications.

**Model**:
- Represents the application data or business logic.
- The data that needs to be displayed in the view is encapsulated in the model.
- Example: Objects like User, Order, etc., passed from controllers to views.

**View**:
- Responsible for rendering the model data to the user.
- The presentation layer, typically written in JSP, Thymeleaf, HTML, or any templating technology.
- Example: A web page showing user information.

**Controller**:

- Handles incoming HTTP requests, processes them (e.g., calls services), and returns a model and view name.
- Example: Maps a URL like /user to a method that retrieves user data and returns it to a view.

![image](https://github.com/user-attachments/assets/bd656e8f-0b1a-40bd-a3e0-aa4849ac9163)

### 1. Receiving HTTP request
When user sends an HTTP request (accessing a URL in browser), the web server forwards this request to the DispatcherServlet.  

The DispatcherServlet is the front controller in the Spring MVC architecture. It is the single entry point that processes all incoming HTTP requests and delegates them to the appropriate components like controllers, view resolvers, and handlers.

### 2. Delegate HTTP Request
The DispatcherServlet processes the request and delegates it to other components.  

The HandlerMapping component maps the incoming request's URL to a specific controller and method.  

Determines which controller method should handle the request based on annotations like `@RequestMapping`, `@GetMapping`, or `@PostMapping`

```java
@Controller
public class ExampleController {
    @GetMapping("/greet")
    public String greetUser() {
        return "greeting";
    }
}
```

If the request is for /greet, the method greetUser() is invoked

### 3. Handle request
The identified controller method processes the request and performs the required business logic (e.g., accessing the database, calling services).  

The method typically interacts with the Model and prepares data to be sent back to the view.  

### 4. Create model
A Model is an object that holds the data to be displayed in the view. It acts as a container for data between the controller and the view.
```java
@GetMapping("/user")
public String getUser(Model model) {
    model.addAttribute("name", "John Doe");
    return "userProfile";
}
```
The `model` holds data like `name="John Doe"` that will be accessible in the `userProfile` view.

### 5. Return model and view name
The controller method returns a logical view name and the model data.
```java
return "userProfile"; // Logical view name
```

### 6. Identify correct view
The ViewResolver translates the logical view name into an actual view (HTML, JSP, Thymeleaf template, etc.).  

### 7. Resolve view
The resolved view is executed. This could be:
- Thymeleaf Template: A dynamic HTML template that renders data.
- JSP Page: A Java Server Page that processes the model data.
- Other Views: JSON, XML, or other formats for RESTful APIs.   

The Model data is passed to the view for rendering.

### 8. Return HTTP response
The generated view (HTML, JSON, etc.) is converted into an HTTP response.  

This response is sent back to the client (browser or any HTTP client).

## URL breakdown
![image](https://github.com/user-attachments/assets/8e17e718-e24d-4de4-9a91-e8246b6e4937)

**Scheme** - the protocol(method for exchanging or transferring data around a computer network) the browser must use to request the resource. Usually for websites the protocol is HTTPS or HTTP (its unsecured version).  

**Domain** - indicates which Web server is being requested. Usually this is a domain name, but an IP address may also be used.  

**Port** - indicates the technical "gate" used to access the resources on the web server. It is usually omitted if the web server uses the standard ports of the HTTP protocol (80 for HTTP and 443 for HTTPS) to grant access to its resources.  

**Authority** - includes the domain(`www.example.com`) and port (`80`)  

**Resource path** - the path to the resource on the Web server.  

**Parameters** - extra parameters provided to the server. Those parameters are a list of key/value pairs separated with the & symbol.  

**Anchor** -  another part of the resource itself. An anchor represents a sort of "bookmark" inside the resource, giving the browser the directions to show the content located at that "bookmarked" spot. On an HTML document, for example, the browser will scroll to the point where the anchor is defined

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

## JSP (Java Server Pages)
Store JSP views in `src/main/resources/META-INF/resources/WEB-INF/jsp` folder     

```html
// welcome.jsp
<html>
        <head>
                <title>Welcome</title>
        </head>
        <body>
                <div>
                    Hello ${name}, your password is : ${password}
                </div>
        </body>
</html>
```
Use Expression Language (EL) evaluation to extract attributes/values from the model and bind to a view such as `name` and `password`.
