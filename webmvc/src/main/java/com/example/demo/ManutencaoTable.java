package com.example.demo;

import java.util.Date;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table (name="tb_manutencao_crud")
public class ManutencaoTable {
	
	//Atributos
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // Auto Increment
	private Long Id;
	@Column
	@NotNull
	private String nome;
	@Column
	@JsonFormat(pattern="yyyy-mm-dd")
	private Date data;
	@Column
	private boolean pago;
	@Column
	private String categoria;
	
	
	//GETTERS E SETTERS
	
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public boolean isPago() {
		return pago;
	}
	public void setPago(boolean pago) {
		this.pago = pago;
	}
	
	

	

}
