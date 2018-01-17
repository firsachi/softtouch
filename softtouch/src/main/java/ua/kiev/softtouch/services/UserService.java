package ua.kiev.softtouch.services;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
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
	public List<UserModel> getAll() {
		List<UserModel> lResult = new ArrayList<>();
		lResult = getDao().getAll().stream()
				.map(entity -> userTransformer.entityModel(entity))
				.collect(Collectors.toList());
		return lResult;
	}
	
	
	
	

}
