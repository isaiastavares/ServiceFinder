//
//  Servico.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import Foundation


class Servico {
    
    var usuario : Usuario
    var categoria : String
    var descricao : String
    var avaliacao : Float
    var valor : Double
    
    init(usuario : Usuario, categoria : String, descricao : String, avaliacao : Float, valor : Double) {
        self.usuario = usuario
        self.categoria = categoria
        self.descricao = descricao
        self.avaliacao = avaliacao
        self.valor = valor
    }
    
    static func getListaServicosBusca() -> [Servico] {
        let usuario = Usuario.getUsuario()
        
        let servico1 = Servico(usuario: usuario, categoria: "TI", descricao: "Formato PC", avaliacao: 4.5, valor: 180.00)
        let servico2 = Servico(usuario: usuario, categoria: "Pedreiro", descricao: "Faço casas", avaliacao: 4.8, valor: 1000.00)
        
        return [
            servico1,
            servico2
        ]
    }
    
    static func getListaServicosDoUsuario() -> [Servico] {
        let usuario = Usuario.getUsuario()
        
        let servico1 = Servico(usuario: usuario, categoria: "TI", descricao: "Formato PC", avaliacao: 4.5, valor: 180.00)
        let servico2 = Servico(usuario: usuario, categoria: "Pedreiro", descricao: "Faço casas", avaliacao: 4.8, valor: 1000.00)
        
        return [
            servico1,
            servico2
        ]
    }
}
