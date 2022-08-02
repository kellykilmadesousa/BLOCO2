package org.generation.blogpessoal.repository;

import java.util.List;

import org.generation.blogpessoal.model.PostagemModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostagemRepository extends JpaRepository <PostagemModel, Long>{ //essa postagem é da Model
	//long é a chave primária
	public List<PostagemModel> findAllByTituloContainingIgnoreCase(@Param("titulo")String titulo);
	/*SELECT * FROM tb_postagens WHERE titulo = "" */
	/*SELECT * FROM tb_postagens WHERE titulo LIKE = "%titulo%" */
}
