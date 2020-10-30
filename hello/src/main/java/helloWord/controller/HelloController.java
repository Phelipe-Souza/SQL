package helloWord.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")

public class HelloController {
	 

	@GetMapping
	public String hello() {
		return "Meus Objetivos foram aprender um pouco mais sobre Mysql e inicializar no Spring Boot";
	}
	

}
