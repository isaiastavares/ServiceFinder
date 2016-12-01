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
        
        let usuarios = Usuario.getLista()
        
        let servico1 = Servico(usuario: usuarios[0], categoria: "TI", descricao: "Formato PC, notebook, limpo virus, faço backup e manutenções em aparelhos.", avaliacao: 4.5, valor: 180.00)
        let servico2 = Servico(usuario: usuarios[0], categoria: "Pedreiro", descricao: "Faço casas, paredes, robocos, azulejos e reformas em geral.", avaliacao: 4.8, valor: 1000.00)
        let servico3 = Servico(usuario: usuarios[1], categoria: "Diarista", descricao: "Limpo casas, apartamentos, casebres e faço faxinas em empresas.", avaliacao: 3.2, valor: 150.00)
        let servico4 = Servico(usuario: usuarios[2], categoria: "Encanador", descricao: "Desentupo pias, vasos, passo encanamentos e serviços variados envolvendo tubos e conexões", avaliacao: 2.3, valor: 600.00)
        
        return [
            servico1,
            servico2,
            servico3,
            servico4
        ]
    }
    
    static func getListaServicosDoUsuario() -> [Servico] {
        
        let usuarios = Usuario.getLista()
        
        let servico1 = Servico(usuario: usuarios[0], categoria: "TI", descricao: "Formato PC, notebook, limpo virus, faço backup e manutenções em aparelhos", avaliacao: 4.5, valor: 180.00)
        let servico2 = Servico(usuario: usuarios[0], categoria: "Pedreiro", descricao: "Faço casas, paredes, robocos, azulejos e reformas em geral", avaliacao: 4.8, valor: 1000.00)
        
        return [
            servico1,
            servico2
        ]
    }
}
