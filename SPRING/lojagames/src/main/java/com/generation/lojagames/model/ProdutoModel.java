package com.generation.lojagames.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@Entity
@Table (name="tb_produtos")
public class ProdutoModel {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message="o nome do produto é obrigatório!")
	@Size(min=5, max=100, message= "o nome do produto deve conter de 5 a 100 caracteres")
	private String nome;
	
	@NotBlank(message="a decrição é obrigatório!")
	@Size(min=10, max=500, message= "a descrição deve conter de 10 a 500 caracteres")
	private String descricao;
	
	@Positive(message="o preço é obrigatório!")
	private BigDecimal preco; 
	
	@ManyToOne
	@JsonIgnoreProperties("produto")
	private CategoriaModel categoria;
	
	@ManyToOne
	@JsonIgnoreProperties("produto")
	private UsuarioModel usuario;
	
 
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	public CategoriaModel getCategoria() {
		return categoria;
	}

	public void setCategoria(CategoriaModel categoria) {
		this.categoria = categoria;
			
	}

	public UsuarioModel getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioModel usuario) {
		this.usuario = usuario;
	}
	
}
