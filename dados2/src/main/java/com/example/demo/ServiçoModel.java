package com.example.demo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
public class ServiçoModel {
	
	//Atributos
	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column
	private String nomeServiço;
	
	@Column
	@JsonFormat (pattern="yyyy-mm-dd")
	private Date data;
	
	
	//getters in setters

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNomeServiço() {
		return nomeServiço;
	}

	public void setNomeServiço(String nomeServiço) {
		this.nomeServiço = nomeServiço;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
	

	
	

}
