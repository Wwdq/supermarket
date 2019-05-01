package service;

import dao.UserMapper;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User doLogin(User user) {
        User user1=userMapper.selectUser(user);
        return user1;
    }
    public void insertUser(User user){
        userMapper.insertUser(user);
    }
    public boolean  hasUsername(String name){
        User user = userMapper.selectByUsername(name);
        return user==null;
    }
}
