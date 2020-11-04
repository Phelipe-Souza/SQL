package com.example.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

// REPOSITORY FAZ A CONDUÇÃO DA TABELA AO BANCO, SERVE PARA PERSISTIR PS DADOS NO BANCO
// PARA FAZER OS GETS E POSTS É PRECISO PERSISTIR

public interface ManutencaoRepositorry extends JpaRepository<ManutencaoTable, Long> {

	List<ManutencaoTable> findByNome(String nome);

	Optional<ManutencaoTable> findByNomeAndCategoria(String nome, String categoria);

}
