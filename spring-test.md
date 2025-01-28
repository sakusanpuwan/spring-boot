# Unit Testing
Unit testing focuses on testing individual units of code to ensure that they function correctly in isolation. A unit refers to the smallest testable component of a software application, usually a function, method, or procedure. The purpose of unit testing is to verify the behavior of these individual units and detect any defects or errors early in the development process.

```java
public class ExternalService {
    public String getExternalData() {
        return "Real Data from external system";
    }

    public String getGreeting() {
        return "Hello from external system";
    }
}
```

```java
@Service
public class UserService {

    private final ExternalService externalService;

    @Autowired
    public UserService(ExternalService externalService) {
        this.externalService = externalService;
    }

    public String getUserData() {
        return "User data with: " + externalService.getExternalData();
    }

    public String getGreetingMessage() {
        return externalService.getGreeting();
    }
}
```

## Spring Boot Test
``@SpringBootTest`` - Boots the entire Spring Application context for integration tests.  

This is used for integration tests where you need the entire Spring application context to be loaded. It’s best suited for testing how different parts of the application work together.

When to use:  
- Testing application-level components: For example, verifying that your controllers, services, and repositories interact as expected.
- Verifying configurations: If you need to ensure that specific beans are configured and wired correctly.
- End-to-end tests: When you want to mimic a production-like setup.  

``@MockBean`` is used in Spring Boot tests to replace a real bean in the application context with a mock. This is useful for isolating a component and mocking its dependencies.  

```java
@SpringBootTest
public class UserServiceIntegrationTest {

    @Autowired
    private UserService userService;  // Autowiring the service

    @MockBean
    private ExternalService externalService;  // Mocking the ExternalService bean

    @Test
    public void testGetUserData() {
        // Mock the behavior of externalService
        when(externalService.getExternalData()).thenReturn("Mocked Data");

        // Test the service method
        String result = userService.getUserData();

        assertEquals("User data with: Mocked Data", result);  // Verifying mocked behavior
    }
}
```

## Mock Test
This is used for unit tests where you want to isolate the class under test by mocking its dependencies. It’s a lightweight alternative to loading the Spring context.

When to use:
- Isolated testing: If you’re testing a single class or method without involving the full application context.
- Mocking dependencies: When you want to mock components like services, repositories, or external APIs to control their behavior in tests.
- Fast feedback: Useful for rapid test execution since no application context is loaded.

```java
@ExtendWith(MockitoExtension.class)  // Automatically initializes mocks
public class UserServiceTest {

    @Mock
    private ExternalService externalService;  // Mocking the dependency

    @InjectMocks
    private UserService userService;  // Injecting mocks into the service

    @Test
    public void testGetUserData() {
        // MockitoAnnotations.openMocks(this); // Initializing mocks - @ExtendWith(MockitoExtension.class) can be used

        // Mock the behavior of externalService
        when(externalService.getExternalData()).thenReturn("Mocked Data");

        // Test the service method
        String result = userService.getUserData();

        assertEquals("User data with: Mocked Data", result);  // Verifying mocked behavior
    }
}
```

## Partial Mock Test
With ``@Spy``, we can create a partial mock where some methods are real and some methods are mocked. This is useful when you want to mock only a part of a class while keeping its original behavior for other methods.

```java
@ExtendWith(MockitoExtension.class)
public class UserServiceSpyTest {

    @Mock
    private Dependency dependency;  // Mock a dependency if required by ExternalService

    @Spy
    private ExternalService externalService;  // Declare as a Spy

    @InjectMocks
    private UserService userService;  // Injects the spy and mock into UserService

    @BeforeEach
    public void setUp() {
        externalService = new ExternalService(dependency);  // Initialize with mock dependency
    }

    @Test
    public void testGetUserDataWithSpy() {
        when(externalService.getExternalData()).thenReturn("Mocked Data");
        String result = userService.getUserData();
        assertEquals("User data with: Mocked Data", result);
    }
}
```

### Summary
- ``@Mock``: Creates simple mocks.  
- ``@InjectMocks``: Automatically injects mocks into the class under test.
- ```@MockBean```: Replaces a bean in the Spring context with a mock, typically in integration tests.
- ```@SpringBootTest```: Loads the entire application context for integration testing.
- ```@ExtendWith(MockitoExtension.class)```: Activates Mockito in JUnit 5 tests.

| **Scenario**                                 | **Use `@SpringBootTest`** | **Use `@ExtendWith(MockitoExtension.class)`** |
|----------------------------------------------|---------------------------|-----------------------------------------------|
| Testing a single class in isolation          | ❌                         | ✅                                             |
| Testing multiple components together         | ✅                         | ❌                                             |
| Verifying integration with external services | ✅                         | ❌                                             |
| Quick test execution                         | ❌                         | ✅                                             |
| Full application context required            | ✅                         | ❌                                             |

## Naming Convention
X_DoesY_WhenZ, where X is the name of the method, Y is the expected output, and Z is the name of an event within the logic
