package ua.kiev.softtouch.transformers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import ua.kiev.model.entities.Company;
import ua.kiev.model.entities.Role;
import ua.kiev.model.entities.User;
import ua.kiev.softtouch.models.UserModel;

@Component
public class UserTransformer implements BaseTransformers<UserModel, User>{

	@Override
	public UserModel entityModel(User entity) {
		UserModel model = new UserModel();
		model.setId(entity.getId());
		model.setFirstname(entity.getFirstname());
		model.setLastname(entity.getLastname());
		model.setUsername(entity.getUsername());
		model.setIdCompany(entity.getCompany().getId());
		model.setIdRole(entity.getRoles().get(0).getId());
		model.setPassword(entity.getPassword());
		model.setDisable(entity.isDisable());
		return model;
	}

	@Override
	public User modelEntity(UserModel model) {
		User entity = new User();
		entity.setId(model.getId());
		entity.setFirstname(model.getFirstname());
		entity.setLastname(model.getLastname());
		entity.setPassword(model.getPassword());
		entity.setUsername(model.getUsername());
		entity.setCompany(new Company(new Integer(model.getIdCompany())));
		List<Role> listRole = new ArrayList<>();
		listRole.add(new Role(model.getIdRole()));
		entity.setRoles(listRole);
		entity.setDisable(model.isDisable());
		return entity;
	}

}
