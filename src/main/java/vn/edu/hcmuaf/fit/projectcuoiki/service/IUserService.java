package vn.edu.hcmuaf.fit.projectcuoiki.service;

import vn.edu.hcmuaf.fit.projectcuoiki.model.User;

import java.util.List;
import java.util.Optional;

public interface IUserService {
    public  User register(User user);
    public User updateUser(String id,User user);
    public List<User> getAllUser();
    public User getUserById(String id);


}
