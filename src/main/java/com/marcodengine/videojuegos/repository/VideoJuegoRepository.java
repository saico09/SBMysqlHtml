package com.marcodengine.videojuegos.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.marcodengine.videojuegos.domain.VideoJuego;

public interface VideoJuegoRepository extends JpaRepository<VideoJuego, Integer>{//tipo de dato del id Integer
	
}
