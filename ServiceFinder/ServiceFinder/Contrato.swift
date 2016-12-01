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
        let data1 = Data(dia: 2, mes: 12, ano: 2016, hora: 12, minuto: 0)
        let contrato1 = Contrato(contratante : Usuario.getLista()[1], servico: Servico.getListaServicosBusca()[1], data: data1);
        let data2 = Data(dia: 3, mes: 11, ano: 2016, hora: 10, minuto: 45)
        let contrato2 = Contrato(contratante : Usuario.getLista()[2], servico: Servico.getListaServicosBusca()[2], data: data2);
        let data3 = Data(dia: 24, mes: 1, ano: 2016, hora: 9, minuto: 20)
        let contrato3 = Contrato(contratante : Usuario.getLista()[3], servico: Servico.getListaServicosBusca()[3], data: data3);
        let data4 = Data(dia: 2, mes: 12, ano: 2016, hora: 10, minuto: 40)
        let contrato4 = Contrato(contratante : Usuario.getLista()[4], servico: Servico.getListaServicosBusca()[4], data: data4);
        return [
            contrato1,
            contrato2,
            contrato3,
            contrato4
        ]
    }
}
