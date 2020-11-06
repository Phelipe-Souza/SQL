package com.example.demo;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController
@RequestMapping("/teste")
public class Controller implements WebMvcConfigurer {

	public void addViewControllers(ViewControllerRegistry index) {
		index.addViewController("/").setViewName("forward:/index.html");
	}

	
	// Injetar o Repository
	@Autowired   
	private ManutencaoRepositorry repository;
	
	
	//Quatro Metodos: GET, POST, PUT E DELETE
	//GET BY ID, GET  BY NOME
	
	//localhost:8080/manutencoes
	@GetMapping("/manutencoes")
	public List<ManutencaoTable> buscarTodos(){
		return repository.findAll();
	} 
	  
	//localhost:8080/manutencoes/id
	@GetMapping ("/manutencoes/{id}")
	public Optional<ManutencaoTable> buscaUm(@PathVariable long id){
		return repository.findById(id);
		//@PathVariable serve para pegar o parametro que estiver entre {}
		
	}

	
	//post é inserir, neste caso na mesma URL (localhost:8080/manutencoes)
	@PostMapping("/manutencoes")
	public ManutencaoTable criar(@RequestBody ManutencaoTable objetinho) {
		repository.save(objetinho);
		return objetinho;
	}

	
	
	//Put significa atualizar, primeiro pega com a @PathVariable e depois insere com @RequestBody
	//setId vai forçar a alteração do body, setar = mudar
	@PutMapping("/manutencao/{id}")
	public ManutencaoTable atualizar (@PathVariable Long id, @RequestBody ManutencaoTable objetinho) {
	objetinho.setId(id);
	repository.save(objetinho);
	return objetinho;
	}
	
	@GetMapping("/manutencoes/{nome}")
	public List<ManutencaoTable> buscarPorNome(@PathVariable String nome){
		return repository.findByNome(nome);
	}
	
	@GetMapping("/manutencoes/{nome}/{categoria}")
	public Optional<ManutencaoTable> findByNomeAndCategoria(@PathVariable String nome, @PathVariable String categoria){
	return repository.findByNomeAndCategoria(nome, categoria);	
	}
	
	
	@DeleteMapping("/{id}")
	public void delete(@PathVariable long id) {
		repository.deleteById(id);
	}

}
