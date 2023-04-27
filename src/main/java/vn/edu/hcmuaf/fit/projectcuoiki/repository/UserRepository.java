package vn.edu.hcmuaf.fit.projectcuoiki.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.hcmuaf.fit.projectcuoiki.model.User;
@Repository
public interface UserRepository extends JpaRepository<User,String> {
}
