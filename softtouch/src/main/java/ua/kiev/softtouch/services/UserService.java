package ua.kiev.softtouch.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.UserDao;
import ua.kiev.model.entities.User;
import ua.kiev.softtouch.models.UserModel;
import ua.kiev.softtouch.transformers.BaseTransformers;

@Service
public class UserService {
	
	@Autowired
	private DaoFactory daoFactory;
	
	@Autowired
	private BaseTransformers<UserModel, User> userTransformer;
	
	public UserDao getDao() {
		return daoFactory.createUserDaoImpl();
	}

	@Transactional
	public List<User> getAll() {
		return daoFactory.createUserDaoImpl().getAll();
	}

	@Transactional
	public UserModel byId(int id) {
		return userTransformer.entityModel(daoFactory.createUserDaoImpl().byId(id));
	}

	@Transactional
	public void save(UserModel userModel) {
		Md5PasswordEncoder md = new Md5PasswordEncoder();
		userModel.setPassword(md.encodePassword(userModel.getPassword(), null));
		getDao().create(userTransformer.modelEntity(userModel));
	}

	@Transactional
	public void update(UserModel userModel) {
		getDao().update(userTransformer.modelEntity(userModel));
	}
	

}
