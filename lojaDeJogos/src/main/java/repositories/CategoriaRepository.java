package repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import models.CategoriaModel;

public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long> {

	
}
