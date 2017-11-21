package ua.kiev.softtouch;

import javax.servlet.ServletRegistration.Dynamic;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.security.config.BeanIds;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.DispatcherServlet;

import ua.kiev.model.configurations.ModelConfiguration;
import ua.kiev.softtouch.configurations.AppMvcConfig;
import ua.kiev.softtouch.configurations.AppSecurityConfiguration;


public class Initializer implements WebApplicationInitializer{

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		ctx.register(AppMvcConfig.class);
		ctx.register(AppSecurityConfiguration.class);
		ctx.register(ModelConfiguration.class);
		servletContext.addListener(new ContextLoaderListener(ctx));
		ctx.setServletContext(servletContext);
		Dynamic servlet = servletContext.addServlet("appServlet", new DispatcherServlet(ctx));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(1);
		
		FilterRegistration.Dynamic encodingFilter = servletContext.addFilter("encoding-filter", new CharacterEncodingFilter());
        encodingFilter.setInitParameter("encoding", "UTF-8");
        encodingFilter.setInitParameter("forceEncoding", "true");
        encodingFilter.addMappingForUrlPatterns(null, true, "/*");
	    
        FilterRegistration.Dynamic security = servletContext.addFilter(BeanIds.SPRING_SECURITY_FILTER_CHAIN,new DelegatingFilterProxy());
        security.addMappingForUrlPatterns(null,false,"/*");
	    
	}

}
