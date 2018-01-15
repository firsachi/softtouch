package ua.kiev.softtouch.services;

import org.springframework.stereotype.Component;

import ua.kiev.model.entities.Company;
import ua.kiev.model.entities.Subdivision;
import ua.kiev.softtouch.models.CompanyModel;

@Component
public class ComapnyTransformer {

	public Company modelEntity(CompanyModel model) {
		Company company = new Company();
		company.setId(model.getId());
		company.setComapanyName(model.getComanyname());
		company.setDisable(model.isDisable());
		company.setSubdivision(new Subdivision(model.getIdSubdivision()));
		return company;
	}

	public CompanyModel entityModel(Company entity) {
		CompanyModel model = new CompanyModel();
		model.setId(entity.getId());
		model.setComanyname(entity.getComapanyName());
		model.setDisable(entity.isDisable());
		model.setIdSubdivision(entity.getSubdivision().getId());
		return model;
	}

}
