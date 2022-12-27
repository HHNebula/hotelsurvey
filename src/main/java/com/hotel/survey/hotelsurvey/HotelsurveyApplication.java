package com.hotel.survey.hotelsurvey;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class HotelsurveyApplication {

	public static void main(String[] args) {
		SpringApplication.run(HotelsurveyApplication.class, args);
	}

}
