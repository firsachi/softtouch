package ua.kiev.softtouch.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.SubdivisionDao;
import ua.kiev.softtouch.models.SubdivisionModel;

@Service
@Transactional
public class SubdivisionService {
	
	@Autowired
	private DaoFactory daoFactory;
	
	@Autowired
	private SubdivisionTransformer subdivisionTransformer;
	
	public SubdivisionDao getDao() {
		return daoFactory.createSubdivisionDao();
	}

	public boolean isSubdivisionName(String name) {
		if (null == getDao().getName(name.trim())) {
			return false;
		}
		else {
			return true;
		}
	}

	@Transactional
	public void save(SubdivisionModel model) {
		getDao().create(subdivisionTransformer.modelEntity(model));
	}

	@Transactional
	public SubdivisionModel byId(int id) {
		return subdivisionTransformer.entityModel(getDao().byId(id));
	}

	@Transactional
	public void update(SubdivisionModel model) {
		getDao().update(subdivisionTransformer.modelEntity(model));
	}

	public void disabele(SubdivisionModel model) {
		model.setDisable(true);
		update(model);
	}

}
