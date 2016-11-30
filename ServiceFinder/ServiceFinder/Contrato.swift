//
//  Contrato.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import Foundation

class Contrato {
    
    var contratante : Usuario
    var servico : Servico
    var data : String
    
    init(contratante: Usuario, servico : Servico, data : String) {
        self.contratante = contratante
        self.servico = servico
        self.data = data
    }
    
    static func getLista() -> [Contrato] {
        let contrato1 = Contrato(contratante : Usuario.getLista()[1], servico: Servico.getListaServicosBusca()[1], data: "02-12-2016");
        
        return [
            contrato1
        ]
    }
}
