package com.felipe.controladores;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ControladorRecetas {
	

	private static String[] listaRecetas = {"Pizza", "Espagueti", "Lasaña"};
	private static HashMap<String, String []> recetasConIngredientes = new HashMap<String, String[]>();
	
	//constructor
	public ControladorRecetas() {
		String [] pizza = {"Pan", "Salsa de tomate", "Queso", "Pepperoni"};
		recetasConIngredientes.put("Pizza", pizza);
		String [] espagueti = {"Pasta", "Salsa de tomate", "Carne molida", "Queso parmesano"};
		recetasConIngredientes.put("Espagueti", espagueti);
		String [] lasaña = {"Pasta", "Salsa de tomate", "Queso", "Albahaca", "Espinaca", "Champiñones"};
		recetasConIngredientes.put("Lasaña", lasaña);
	}
	
	@GetMapping("/recetas")
	public String obtenerTodasLasRecetas(Model model) {
		model.addAttribute("listaDeRecetas", listaRecetas);
		return "recetas.jsp";
	}
	
	@GetMapping("/recetas/{nombre}")
	public String obtenerRecetasPorNombre(@PathVariable String nombre, Model model) {
		if (recetasConIngredientes.containsKey(nombre)) {
			model.addAttribute("receta", nombre);
			model.addAttribute("ingredientes", recetasConIngredientes.get(nombre));
		} else {
			model.addAttribute("mensaje", "No se encuentra la receta");
		}
		
		return "detalleReceta.jsp";
	}
	
}