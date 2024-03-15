package com.marcodengine.videojuegos.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.marcodengine.videojuegos.domain.VideoJuego;
import com.marcodengine.videojuegos.repository.VideoJuegoRepository;

@Service	
public class VideojuegoService {
	
	private final VideoJuegoRepository videojuegoRepository;
	
	
	
	public VideojuegoService(VideoJuegoRepository videojuegoRepository) {
		this.videojuegoRepository = videojuegoRepository;
	}



	public List<VideoJuego> buscarDestacados(){
		
		return videojuegoRepository.buscarTodos();
		//return videojuegoRepository.findAll();
		
		/*List<VideoJuego> destacados = new ArrayList<>();
		
		VideoJuego juego1 = new VideoJuego();
        juego1.setNombre("God of War 4");
        juego1.setDescripcion("Nueva aventura de Kratos");
        juego1.setImageUrl("https://pics.filmaffinity.com/God_of_War-693015917-large.jpg");
        destacados.add(juego1);

        VideoJuego juego2 = new VideoJuego();
        juego2.setNombre("Grand Theft Auto V");
        juego2.setDescripcion("Atrévete a entrar en Los Santos");
        juego2.setImageUrl("https://i.blogs.es/2c9c70/gta-20v-20portada-20grande/450_1000.webp");
        destacados.add(juego2);

        VideoJuego juego3 = new VideoJuego();
        juego3.setNombre("Red Dead Redemption 2");
        juego3.setDescripcion("Vive la épica historia del oeste");
        juego3.setImageUrl("https://i.blogs.es/juegos/13424/red_dead_3__nombre_temporal_/fotos/maestras/red_dead_3__nombre_temporal_-4030936.jpg");
        destacados.add(juego3);

        VideoJuego juego4 = new VideoJuego();
        juego4.setNombre("Starcraft 2");
        juego4.setDescripcion("Domina el campo de batalla en el espacio");
        juego4.setImageUrl("https://media.vandal.net/m/9604/starcraft-ii-legacy-of-the-void-20151111113556_1.jpg");
        destacados.add(juego4);
		
		return destacados;*/
	}
}
