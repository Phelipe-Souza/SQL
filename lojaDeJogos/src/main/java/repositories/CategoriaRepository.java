package repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import models.CategoriaModel;

public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long> {
	List<CategoriaModel> findByDescricao(String descricao);

	
}
