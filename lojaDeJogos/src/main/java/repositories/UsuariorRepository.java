package repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import models.UsuarioModel;

public interface UsuariorRepository extends JpaRepository<UsuarioModel, Long> {
	List<UsuarioModel> findByNome(String nome);

}
