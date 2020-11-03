package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.bind.annotation.RequestBody;

@RestController

public class Controller implements WebMvcConfigurer {
	
	public void addViewControllers(ViewControllerRegistry index) {
		index.addViewController("/").setViewName("forward:/index.html");
	}
	
	@Autowired
	private ManutencaoRepositorry repository;
	
	@GetMapping ("/manutencoes/")
	public List<ManutencaoTable> buscarTodos(){
		return repository.findAll();
	} 
	  
	@GetMapping ("/manutencoes/{id}")
	public Optional<ManutencaoTable> buscaUm(@PathVariable long id){
		return repository.findById(id);
	}

	@PostMapping("/manutencoes")
	public ManutencaoTable criar (@RequestBody ManutencaoTable objetoManutencao) {
		repository.save(objetoManutencao);
		return objetoManutencao;
	}
}
