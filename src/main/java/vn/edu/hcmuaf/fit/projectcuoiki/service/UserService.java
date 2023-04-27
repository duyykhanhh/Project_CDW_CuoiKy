package vn.edu.hcmuaf.fit.projectcuoiki.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.edu.hcmuaf.fit.projectcuoiki.model.User;
import vn.edu.hcmuaf.fit.projectcuoiki.repository.UserRepository;

import java.util.List;
import java.util.Optional;

@Service
public class UserService implements IUserService{
    @Autowired
    UserRepository userRepository;
    @Override
    public User register(User user) {
        return userRepository.save(user);
    }

    @Override
    public User updateUser(String id, User user) {
        Optional<User> existUser = userRepository.findById(id);
        if(existUser.isPresent()){
            existUser.get().setName(user.getName());
            existUser.get().setPassword(user.getPassword());
            return userRepository.save(existUser.get());
        }
        return null;
    }

    @Override
    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    @Override
    public User getUserById(String id) {
        //id is mail
        Optional<User> optionalUser = userRepository.findById(id);
        if(optionalUser.isPresent()){
            return optionalUser.get();
        }

        return null;
    }
}
