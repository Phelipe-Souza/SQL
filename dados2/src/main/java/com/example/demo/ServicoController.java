package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/hello")
@RestController
public class ServicoController {

//	@GetMapping("get1")
//	public String hello1() {
//		return "Hey Get1 Hello World";
//	}
//	
//	@GetMapping("get2")
//	public String hello2() {
//		return "Hey Get Hello World";
//		
//	}
		//injeção
		
		@Autowired
		private ServicoRepository repository;
		
		
		//Isso é um método
		//Get com find all
		@GetMapping ("/servicos")
		public List<ServiçoModel> pegarTodos() {		
			return repository.findAll();
		}
		
		
		// Post é Responsável por inserir
	    @PostMapping ("/servicos")
	    public ServiçoModel criar (@RequestBody ServiçoModel tabelaServico) {
	    	repository.save(tabelaServico);
	    	return tabelaServico;	
	}
	    
	    
}
