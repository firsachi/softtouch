package ua.kiev.softtouch.validations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import ua.kiev.softtouch.services.SubdivisionService;

public class SubdivisionNameValidator implements ConstraintValidator<NotExistingSubdivisionName, String>{
	
	@Autowired
	private SubdivisionService subdivisionService;

	@Override
	public void initialize(NotExistingSubdivisionName arg0) {
	}

	@Override
	@Transactional
	public boolean isValid(String name, ConstraintValidatorContext arg1) {
		return name != null && !subdivisionService.isSubdivisionName(name);
	}

}
