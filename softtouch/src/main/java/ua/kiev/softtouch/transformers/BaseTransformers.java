package ua.kiev.softtouch.transformers;

public interface BaseTransformers<M, E> {
	
	M entityModel(E entity);
	
	E modelEntity(M moMdel);

}
