# Core Concepts in Spring Framework

## POJO and Java Bean

### POJO (Plain Old Java Object)
- **Definition**: A POJO is a simple Java object not bound by any special restrictions or rules.
- **Characteristics**:
    - No need to implement specific interfaces or extend certain classes.
    - Can be any Java object with properties and methods.

**Example**:
```java
class POJO {
    private String text;
    private int number;

    public String toString() {
        return text + ":" + number;
    }
}
```
### Java Bean

- **Definition**: A Java Bean is a specific type of POJO that adheres to particular conventions.
- **Characteristics**:
    - Must have a public, no-argument constructor.
    - Properties should be accessed through getters and setters.
    - Typically implements `Serializable` to allow easy storage and retrieval.

**Example**:
```java
import java.io.Serializable;

class JavaBean implements Serializable {
    public JavaBean() {} // No-arg constructor

    private String text;
    private int number;

    public String getText() { return text; }
    public void setText(String text) { this.text = text; }

    public int getNumber() { return number; }
    public void setNumber(int number) { this.number = number; }
}
```

### Spring Bean
- **Definition**: A Java object that is managed by the Spring IoC (Inversion of Control) container.
- **Characteristics**:
  - Managed by the Spring container
  - Can be created, configured, and injected by the Spring framework
  - Lifecycle and scope managed by the Spring container

## Spring Container / Context

The Spring Container (also known as the IoC container) is responsible for managing beans and their lifecycle within a Spring application. The container:

- Accepts POJOs and configuration as input.
- Outputs a fully configured application where Spring manages the instantiation, configuration, and injection of dependencies.

### Types of Spring Containers

1. **BeanFactory (Basic)**
    - Supports basic dependency injection and bean lifecycle management.
    - **Lazy initialization**: Beans are created only when needed.
    - **Use case**: Resource-constrained environments.

2. **ApplicationContext (Advanced)**
    - Extends BeanFactory with additional capabilities:
        - **Eager initialization**: Beans are created when the context is created.
        - Internationalization, event propagation, and integration with AOP (Aspect-Oriented Programming).
    - **Use case**: Enterprise applications, web apps, REST APIs, and microservices.

## Dependency Injection (DI)

- **Definition**: DI is a design pattern that allows a class to receive its dependencies from an external source rather than creating them internally.
- **Role in Spring**: Spring uses DI to manage beans and their dependencies, enabling Inversion of Control (IoC) where the container handles dependencies.

### Construction injection

Dependencies are provided through the class constructor

```java
public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
```

### Setter injection

Dependencies are set through public setter methods after the object is created

```java
public class UserService {
    private UserRepository userRepository;

    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
```

### Field injection

Dependencies are injected directly into class fields, using the `@Autowired` annotation

```java
@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
}
```

### Optimal constructor injection
Constructor Injection is generally preferred in most scenarios because it promotes immutability (_can declare the dependency as final, which ensures it is initialized once and cannot be changed_), makes dependencies explicit, and enhances testability.
```java
@Service
public class UserService {
    private final UserRepository userRepository;
    
    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
}
```
#### Service Annotation
The `@Service` annotation on `UserService` indicates that this class is a Spring-managed bean. Spring will detect this class during component scanning.

#### Constructor Injection
When Spring creates an instance of `UserService`, it sees the constructor that takes a `UserRepository` parameter.

#### Finding the Dependency
With `@Autowired`, Spring knows to look for a bean of type `UserRepository`. If one is available in the application context (for example, if `UserRepository` is also annotated with `@Repository` or another stereotype annotation), Spring will resolve this dependency.

#### Injection
Spring then calls the constructor of `UserService`, passing in the resolved `UserRepository` instance as an argument. This instance is then assigned to the `userRepository` field in `UserService`.
