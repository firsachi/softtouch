package ua.kiev.softtouch.validations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import ua.kiev.softtouch.models.CompanyModel;
import ua.kiev.softtouch.services.CompanyService;

@Component
public class CpmpanyValidator implements Validator{
	
	@Autowired
	private CompanyService companyService;

	@Override
	public boolean supports(Class<?> clazz) {
		return CompanyModel.class.equals(clazz);
	}

	@Override
	public void validate(Object model, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "comanyname", "error.null");
		CompanyModel companyModel =  (CompanyModel) model;
		String companyname = companyModel.getComanyname();
		if( companyname != null && !companyService.isSubdivisionName(companyname)) {
			errors.rejectValue("comanyname", "error.ismatches");
		}
		
	}

}
