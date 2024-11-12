package com.example.learn_spring_test.service;

import com.example.learn_spring_test.model.User;
import com.example.learn_spring_test.repository.UserRepository;
import com.example.learn_spring_test.util.ExternalApiClient;
import com.example.learn_spring_test.util.NameUtil;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final ExternalApiClient externalApiClient;
    private final NameUtil nameUtil;

    public UserService(UserRepository userRepository, ExternalApiClient externalApiClient, NameUtil nameUtil) {
        this.userRepository = userRepository;
        this.externalApiClient = externalApiClient;
        this.nameUtil = nameUtil;
    }

    public List<User> getUsers() {
        return userRepository.findAll();
    }

    public User createUser(User user) {
        user.setName(nameUtil.formatName(user.getName()));
        externalApiClient.notifyUserCreation(user);
        return userRepository.save(user);
    }
}
