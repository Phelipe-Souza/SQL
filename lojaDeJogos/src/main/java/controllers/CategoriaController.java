package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import models.CategoriaModel;
import repositories.CategoriaRepository;

@RestController
public class CategoriaController {
	
	
	@Autowired
	private CategoriaRepository repository;
	
	@GetMapping("/categorias")
	public ResponseEntity<List<CategoriaModel>> buscarTodasCategorias(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/categorias/id/{id}")
	public ResponseEntity<CategoriaModel> buscarCategoriaPorId(@PathVariable long id){
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp)).orElse(ResponseEntity.notFound().build());
	}

}
