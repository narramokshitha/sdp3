package com.example.socialmedia;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserDAO userDAO;

    public User findByUsername(String username) {
        return userDAO.findByUsername(username);
    }

    public void saveUser(User user) {
        userDAO.save(user);
    }
}
