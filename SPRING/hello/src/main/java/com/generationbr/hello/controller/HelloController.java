package com.generationbr.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// Annotation - Anatação Spring
@RestController // indica para o spring que o código abaixo é da classe controladora
@RequestMapping("/hello") // indica a criação de um endpoint - o endpoint /algumacoisa
public class HelloController {

    @GetMapping // metodo http - a função que vai executar a minha api get = read
    /*fucao de hello - dentro dos parênteses são os parâmetros da função, 
     dentro das chaves o que a função retorna */
    public String hello() {
        return "Hello World!!!";
    }

}
