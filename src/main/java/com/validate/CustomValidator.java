package com.validate;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.stereotype.Component;
import com.model.RegistrationBean;


@Component
public class CustomValidator implements Validator{

                
                public void validate(Object arg0, Errors arg1) {
                RegistrationBean reg=(RegistrationBean)arg0;

                if(reg.getFirstName().equals("")) {
                arg1.rejectValue("firstName","","First Name cannot be blank");
                }
                if(reg.getLastName().equals("")) {
                    arg1.rejectValue("lastName","","Last Name cannot be blank");
                    }

                String regex=""+reg.getContactNumber();
                if(regex.length()!=10) {
                                arg1.rejectValue("contactNumber","","Contact Number should be of 10 digits/Conact Number should not be blank");
                }

                }                                                                                                                 

                public boolean supports(Class<?> arg0) {
                                
                                return RegistrationBean.class.isAssignableFrom(arg0);
                }
                

}
