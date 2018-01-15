package ua.kiev.softtouch.services;

import org.springframework.stereotype.Component;

import ua.kiev.model.entities.Subdivision;
import ua.kiev.softtouch.models.SubdivisionModel;

@Component
public class SubdivisionTransformer {
	
	public SubdivisionModel entityModel(Subdivision entity) {
		SubdivisionModel model = new SubdivisionModel();
		model.setId(entity.getId());
		model.setName(entity.getName());
		model.setDisable(entity.isDelete());
		return model;
	}
	
	public Subdivision modelEntity(SubdivisionModel model) {
		Subdivision entity = new Subdivision();
		entity.setId(model.getId());
		entity.setName(model.getName().trim());
		entity.setDelete(model.isDisable());
		return entity;
	}

}
