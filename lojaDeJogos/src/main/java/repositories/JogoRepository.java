package repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import models.JogoModel;

public interface JogoRepository extends JpaRepository<JogoModel, Long> {

}
