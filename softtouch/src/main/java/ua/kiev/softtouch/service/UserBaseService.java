package ua.kiev.softtouch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.UserDao;
import ua.kiev.model.entities.User;
import ua.kiev.softtouch.models.UserAutentificationModel;

@Service
public class UserBaseService implements UserDetailsService{
	
	@Autowired
	private DaoFactory daoFactoryImpl;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserDao userDao = daoFactoryImpl.createUserDaoImpl();
		User  user = userDao.byEmail(username);
		if (null != user ) {
			UserAutentificationModel moedl = new UserAutentificationModel();
			moedl.setUsername(user.getUsername());
			moedl.setPassword(user.getPassword());
			return moedl;
		}
		return null;
	}

}
