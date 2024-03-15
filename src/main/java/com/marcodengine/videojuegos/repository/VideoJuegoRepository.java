package com.marcodengine.videojuegos.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.marcodengine.videojuegos.domain.VideoJuego;

public interface VideoJuegoRepository extends JpaRepository<VideoJuego, Integer>{//tipo de dato del id Integer
	
	@Query("select v from VideoJuego v order by v.nombre")//JPQL , lenguaje alternativo SQL
	List<VideoJuego> buscarTodos();
	
}
