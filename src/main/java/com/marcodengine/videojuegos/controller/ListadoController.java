package com.marcodengine.videojuegos.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.marcodengine.videojuegos.domain.VideoJuego;
import com.marcodengine.videojuegos.service.VideojuegoService;

@Controller
public class ListadoController {
	
	private final VideojuegoService videojuegosService;
	
	public ListadoController (VideojuegoService videojuegosService) {
		this.videojuegosService=videojuegosService;
	}
	
	
	
	@RequestMapping("/")
	public String listarVidejuegos(Model model) {
		List<VideoJuego> destacados = videojuegosService.buscarDestacados();
		model.addAttribute("videojuegos", destacados);
		return "listado";
	}
}
