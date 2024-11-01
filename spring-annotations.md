### @Configuration
Indicates that the Java class defines Spring configurations. The class contains methods annotated with `@Bean` that should be processed to configure Spring beans.

### @Bean
Annotated methods are responsible for creating and configuring objects (Spring Beans) that are managed by the Spring container. The return value of the method is the actual bean that Spring will manage. Typically used on methods in Spring configuration classes.

### Spring Stereotype Annotations
`@Service`, `@Controller`, `@Repository`, and `@Component` are called Spring Stereotype annotations.

#### @Component
Indicates that a Java class is a Spring-managed component or bean. Spring auto-detects and creates instances of that class and manages its lifecycle. When multiple `@Component` annotations are present in the package to be scanned, use `@Primary` to give preference to one component when multiple components are qualified. Alternatively, use `@Qualifier`, where the qualifier can be specifically named or auto-wired during bean creation.

#### @Service
Indicates that an annotated class contains business logic.

#### @Controller
Indicates that an annotated class is a "Controller" (e.g., a web controller). Used to define controllers in your web applications and REST APIs.

#### @Repository
Indicates that an annotated class is used to retrieve and/or manipulate data in a database.

### @ComponentScan("package path")
Specifies the base package that should be scanned for any Spring-managed beans. Any classes with annotations such as `@Component`, `@Service`, `@Repository`, or `@Controller` will be auto-created as Spring beans.

### @Autowired
Used to automatically inject dependencies into Spring-managed beans. In the context of Spring and dependency injection, a "dependency" typically refers to another object or component that a given class relies on to perform its tasks.

### @Lazy
Used on any class with `@Component` or any methods with `@Bean` to control the initialization of the bean, postponing the creation until it is needed. This improves startup time and resource utilization. For example, when a component scan is performed, if a component does not need to be created, `@Lazy` can defer its creation.

### @Scope
Used to define the scope of a bean, which determines the lifecycle and visibility of instances of that bean within the Spring container. It defines how and when a new instance of the bean is created and how long it lasts.

### @PostConstruct
Specifies a method that should be invoked immediately after a beans initialisation but before its available for use by the application. If custom logic is needed before bean is put into service, like db connection.

### @PreDestroy
Specifies a method that should be invoked before a bean is removed from Spring container. Performs clean up tasks like closing active connections
