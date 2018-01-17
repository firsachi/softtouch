package ua.kiev.softtouch.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.kiev.model.dao.CompanyDao;
import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.entities.Company;
import ua.kiev.softtouch.models.CompanyModel;
import ua.kiev.softtouch.transformers.BaseTransformers;

@Service
public class CompanyService {
	
	@Autowired
	private DaoFactory daoFactory;
	
	@Autowired
	private BaseTransformers<CompanyModel, Company> comapnyTransformer;
	
	public CompanyDao getDao() {
		return daoFactory.createCompanyDao();
	}

	@Transactional
	public void create(CompanyModel companyModel) {
		getDao().create(comapnyTransformer.modelEntity(companyModel));
	}
	
	@Transactional
	public boolean isSubdivisionName(String name) {
		if (null == getDao().byName(name.trim())) {
			return true;
		}
		else {
			return false;
		}
	}

	@Transactional
	public void update(CompanyModel model) {
		getDao().update(comapnyTransformer.modelEntity(model));	
	}
	
	@Transactional
	public CompanyModel byId(int id) {
		return comapnyTransformer.entityModel(getDao().byId(id));
	}
	
	@Transactional
	public void disable(CompanyModel model) {
		model.setDisable(true);
		update(model);
	}
	

}
