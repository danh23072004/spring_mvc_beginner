package vn.hoidanit.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

// @SpringBootApplication

// This is for temporary disabling a security feature of Spring Security
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class LaptopshopApplication {

    public static void main(String[] args) {

        // currentContext is treated as a container for all the beans of the application
        ApplicationContext currentContext = SpringApplication
                .run(LaptopshopApplication.class, args);
    }

}
