package ua.kiev.softtouch.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.SubdivisionDao;
import ua.kiev.softtouch.models.SubdivisionModel;

@Service
public class SubdivisionService {
	
	@Autowired
	private DaoFactory daoFactory;
	
	@Autowired
	private SubdivisionTransformer subdivisionTransformer;

	public boolean isSubdivisionName(String name) {
		SubdivisionDao subdivisionDao = daoFactory.createSubdivisionDao();
		if (null == subdivisionDao.getName(name.trim())) {
			return false;
		}
		else {
			return true;
		}
		
	}

	@Transactional
	public void save(SubdivisionModel model) {
		SubdivisionDao subdivisionDao = daoFactory.createSubdivisionDao();
		subdivisionDao.create(subdivisionTransformer.modelEntity(model));
	}

}
