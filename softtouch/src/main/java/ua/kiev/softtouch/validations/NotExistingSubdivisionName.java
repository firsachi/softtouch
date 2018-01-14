package ua.kiev.softtouch.validations;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Constraint(validatedBy = SubdivisionNameValidator.class)
@Target( { ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface NotExistingSubdivisionName {
	
	String message() default "Invalid phone number";
	
    Class<?>[] groups() default {};
    
    Class<? extends Payload>[] payload() default {};

}
