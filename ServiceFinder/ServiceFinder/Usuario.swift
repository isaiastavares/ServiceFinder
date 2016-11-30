//
//  Usuario.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import Foundation

class Usuario {
    
    var imagemPerfil : String
    var nome : String
    var sobrenome : String
    var endereco : Endereco
    
    init(imagemPerfil : String, nome: String, sobrenome: String, endereco: Endereco) {
        self.imagemPerfil = imagemPerfil
        self.nome = nome
        self.sobrenome = sobrenome
        self.endereco = endereco
    }
    
    static func getUsuario() -> Usuario {
        let endereco = Endereco(rua: "Rua da Liberdade", complemento: "Cond. Res. Bem Viver", cep: "74703-210", bairro: "Vila Martins", cidade: "Goiânia", estado: "Goiás")
        
        return Usuario(imagemPerfil: "isaias", nome: "Isaias", sobrenome: "Tavares", endereco: endereco)
    }
    
    static func getLista() -> [Usuario] {
        let endereco = Endereco(rua: "Rua da Liberdade", complemento: "Cond. Res. Bem Viver", cep: "74703-210", bairro: "Vila Martins", cidade: "Goiânia", estado: "Goiás")
        
        let isaias = Usuario(imagemPerfil: "isaias", nome: "Isaias", sobrenome: "Tavares", endereco: endereco)
        let igor = Usuario(imagemPerfil: "igor", nome: "Igor", sobrenome: "Brandão", endereco: endereco)
        let rafael = Usuario(imagemPerfil: "rafael", nome: "Rafael", sobrenome: "Mereb", endereco: endereco)
        let marilo = Usuario(imagemPerfil: "marilo", nome: "Marilo", sobrenome: "Prado", endereco: endereco)
        
        return [
            isaias,
            igor,
            rafael,
            marilo
        ]
    }
}
