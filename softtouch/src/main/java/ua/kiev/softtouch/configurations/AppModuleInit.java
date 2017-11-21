package ua.kiev.softtouch.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import ua.kiev.model.dao.DaoFactory;
import ua.kiev.model.dao.impl.DaoFactoryImpl;

@Configuration
public class AppModuleInit {
	
	@Bean
	public DaoFactory getDaoFactory() {
		return new DaoFactoryImpl();
	}
}
