package repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import models.JogoModel;

public interface JogoRepository extends JpaRepository<JogoModel, Long> {
	List<JogoModel> findByNome(String nome);
	

}
