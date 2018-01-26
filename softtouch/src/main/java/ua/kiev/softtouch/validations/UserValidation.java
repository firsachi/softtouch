package ua.kiev.softtouch.validations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import ua.kiev.softtouch.models.UserModel;
import ua.kiev.softtouch.services.UserService;

@Component
public class UserValidation implements Validator{

	@Autowired
	private UserService userService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return UserModel.class.equals(clazz);
	}

	@Override
	@Transactional
	public void validate(Object userModel, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "username", "error.null");
		ValidationUtils.rejectIfEmpty(errors, "firstname", "error.null");
		ValidationUtils.rejectIfEmpty(errors, "lastname", "error.null");
		ValidationUtils.rejectIfEmpty(errors, "password", "error.null");
		ValidationUtils.rejectIfEmpty(errors, "repeatPassword", "error.null");
		
		UserModel model = (UserModel) userModel;
		boolean uniqe = false;
		if(userService.getDao().find(model.getUsername(), model.getId()) != null ) {
			uniqe = true;
		}
		if(model.getUsername() != null && uniqe) {
			errors.rejectValue("username", "error.isuser");
		}
		if(		model.getPassword() != null &&
				model.getRepeatPassword() != null &&
				!model.getPassword().equals(model.getRepeatPassword())) {
			errors.rejectValue("password", "error.equalsPassword");
		}
	}

}
