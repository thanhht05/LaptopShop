package javaspring.Laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
// @SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class LaptopshopApplication {

	public static void main(String[] args) {
		SpringApplication.run(LaptopshopApplication.class, args);
	}

}
