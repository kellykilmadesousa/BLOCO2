package com.generation.farmacia.repository;

import java.util.List;

import com.generation.farmacia.model.ProdutoModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdutoRepository extends JpaRepository<ProdutoModel, Long> { //Long vem do Long id de produto
	
	public List<ProdutoModel> findAllByNomeContainingIgnoreCase(@Param("nome")String nome);
	
}
