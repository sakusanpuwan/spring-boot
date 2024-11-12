package com.example.learn_spring_test;

import static org.assertj.core.api.Assertions.assertThat;

import com.example.learn_spring_test.model.User;
import com.example.learn_spring_test.repository.UserRepository;
import com.example.learn_spring_test.service.UserService;
import com.example.learn_spring_test.util.ExternalApiClient;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@SpringBootTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Transactional  // Ensures each test runs in its own transaction and rolls back afterward
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)  // Reset context after each test
public class UserServiceIntegrationTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @MockBean
    private ExternalApiClient externalApiClient;

    @BeforeEach
    void setUp() {
        // Clear database before each test
        userRepository.deleteAll();
    }

    @Test
    public void testGetUsersReturnsAllUsers() {
        // Arrange: Add sample data to H2 database
        User user1 = new User(null, "Alice", "alice@example.com");
        User user2 = new User(null, "Bob", "bob@example.com");
        userRepository.save(user1);
        userRepository.save(user2);

        // Act: Retrieve users through the service
        List<User> users = userService.getUsers();

        // Assert
        assertThat(users).hasSize(2);  // Check if two users are returned
        assertThat(users.get(0).getName()).isEqualTo("Alice");
        assertThat(users.get(1).getName()).isEqualTo("Bob");
    }

    @Test
    public void testCreateUserSavesNewUser() {
        // Arrange: Prepare a new user
        User newUser = new User(null, "Charlie", "charlie@example.com");

        // Act: Save the user through the service
        User savedUser = userService.createUser(newUser);

        // Assert: Check if the user is saved
        assertThat(savedUser.getId()).isNotNull();  // ID should be auto-generated
        assertThat(savedUser.getName()).isEqualTo("Charlie");
        assertThat(savedUser.getEmail()).isEqualTo("charlie@example.com");

        // Verify it’s actually stored in the repository
        List<User> users = userRepository.findAll();
        assertThat(users).hasSize(1);  // Ensure there is only one user
        assertThat(users.get(0).getName()).isEqualTo("Charlie");
    }
}
