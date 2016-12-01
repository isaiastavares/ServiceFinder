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
    var data : Data
    
    init(contratante: Usuario, servico : Servico, data : Data) {
        self.contratante = contratante
        self.servico = servico
        self.data = data
    }
    
    static func getLista() -> [Contrato] {
        let data = Data(dia: 2, mes: 12, ano: 2016, hora: 12, minuto: 00)
        let contrato1 = Contrato(contratante : Usuario.getLista()[1], servico: Servico.getListaServicosBusca()[1], data: data);
        
        return [
            contrato1
        ]
    }
}
