package ua.kiev.softtouch.transformers;

import org.springframework.stereotype.Component;

import ua.kiev.model.entities.User;
import ua.kiev.softtouch.models.UserModel;

@Component
public class UserTransformer implements BaseTransformers<UserModel, User>{

	@Override
	public UserModel entityModel(User entity) {
		UserModel model = new UserModel();
		model.setId(entity.getId());
		model.setCompanyname(entity.getCompany().getComapanyName());
		model.setDisable(entity.isDisable());
		return model;
	}

	@Override
	public User modelEntity(UserModel moMdel) {
		// TODO Auto-generated method stub
		return null;
	}

}