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
    var email: String
    var telefone : String
    var cpf: String
    var endereco : Endereco
    
    init(imagemPerfil : String, nome: String, email: String, telefone: String, cpf: String, endereco: Endereco) {
        self.imagemPerfil = imagemPerfil
        self.nome = nome
        self.email = email
        self.telefone = telefone
        self.cpf = cpf
        self.endereco = endereco
    }
    
    static func getUsuario() -> Usuario {
        let endereco = Endereco(rua: "Rua da Liberdade", complemento: "Cond. Res. Bem Viver", cep: "74703-210", bairro: "Vila Martins", cidade: "Goiânia", estado: "Goiás")
        
        return Usuario(imagemPerfil: "isaias", nome: "Isaias Tavares", email: "isaiasengsoft@gmail.com", telefone: "(62) 98266-4145", cpf: "043.962.081-38", endereco: endereco)
    }
    
    static func getLista() -> [Usuario] {
        let endereco = Endereco(rua: "Rua da Liberdade", complemento: "Cond. Res. Bem Viver", cep: "74703-210", bairro: "Vila Martins", cidade: "Goiânia", estado: "Goiás")
        
        let isaias = Usuario(imagemPerfil: "isaias", nome: "Isaias Tavares", email: "isaiasengsoft@gmail.com", telefone: "(62) 98266-4145", cpf: "043.962.081-38", endereco: endereco)
        let igor = Usuario(imagemPerfil: "igor", nome: "Igor Brandão", email: "igorbrandao@gmail.com", telefone: "(62) 98266-4145", cpf: "043.962.081-38", endereco: endereco)
        let rafael = Usuario(imagemPerfil: "rafael", nome: "Rafael Mereb", email: "rafaelmereb@gmail.com", telefone: "(62) 98266-4145", cpf: "043.962.081-38", endereco: endereco)
        let marllos = Usuario(imagemPerfil: "marllos", nome: "Marllos Prado", email: "marllosprado@gmail.com", telefone: "(62) 98266-4145", cpf: "043.962.081-38", endereco: endereco)
        
        return [
            isaias,
            igor,
            rafael,
            marllos
        ]
    }
}
