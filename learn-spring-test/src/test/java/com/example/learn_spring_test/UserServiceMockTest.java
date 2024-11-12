package com.example.learn_spring_test;

import com.example.learn_spring_test.model.User;
import com.example.learn_spring_test.repository.UserRepository;
import com.example.learn_spring_test.service.UserService;
import com.example.learn_spring_test.util.ExternalApiClient;
import com.example.learn_spring_test.util.NameUtil;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Spy;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class UserServiceMockTest {

    @Mock
    private UserRepository userRepository;

    @Mock
    private ExternalApiClient externalApiClient;

    @Spy
    private NameUtil nameUtil;

    @InjectMocks
    private UserService userService;

    @Test
    public void testGetUsers(){
        // Arrange
        List<User> users = Arrays.asList(new User(1L,"John Doe","john@email.com"));
        when(userRepository.findAll()).thenReturn(users);

        // Act
        List<User> result = userService.getUsers();

        // Assert
        assertEquals(1,result.size());
        verify(userRepository,times(1)).findAll();
    }

    @Test
    public void testCreateUser() {
        // Arrange
        User user = new User(null, "jane Doe", "jane@example.com");
        when(userRepository.save(any(User.class))).thenReturn(user);

        // Act
        User result = userService.createUser(user);

        // Assert
        assertEquals("JANE DOE", result.getName());
        verify(userRepository, times(1)).save(user);
        verify(externalApiClient, times(1)).notifyUserCreation(user);
    }
}
