package com.rest.webservices.restful_web_services.user;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class UserDaoService {

    // DAO (Data Access Object) pattern provides data operations without database

    private static final List<User> users = new ArrayList<>();

    private static int userCount = 0;

    /*
    The static block runs once when the class is loaded into memory,
    before any object of UserDaoService is created
    prepopulates the users list with initial users.
     */
    static {
        users.add(new User(userCount++, "Adam", LocalDate.now().minusYears(30)));
        users.add(new User(userCount++, "Eve", LocalDate.now().minusYears(25)));
        users.add(new User(userCount++, "Jim", LocalDate.now().minusYears(26)));
    }

    public List<User> findAll() {
        return users;
    }

    public User findById(int id) {
        return users.stream()
                .filter(user -> user.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new UserNotFoundException("User " + id + " not found"));
    }

    public User saveUser(User user){
        user.setId(++userCount);
        users.add(user);
        return user;
    }

    public void deleteById(int id) {
        boolean removed = users.removeIf(user -> user.getId().equals(id));
        if (!removed) {
            throw new UserNotFoundException("User " + id + " not found");
        }
    }
}
