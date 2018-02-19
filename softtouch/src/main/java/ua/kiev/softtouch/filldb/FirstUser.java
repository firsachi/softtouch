package ua.kiev.softtouch.filldb;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

import ua.kiev.model.dao.UserDao;
import ua.kiev.model.entities.Role;
import ua.kiev.model.entities.User;

public class FirstUser {
	
	public void addFirstUser(UserDao userDao, Md5PasswordEncoder md5Coder) {
		if(0 == userDao.getAll().size()) {
			User user = new User();
			user.setUsername("admin@ukr.net");
			user.setPassword(md5Coder.encodePassword("1q2w3e4r", null));
			List<Role> listRole = new ArrayList<>();
			listRole.add(new Role(1));
			user.setRoles(listRole);
			userDao.create(user);
		}
	}

}
