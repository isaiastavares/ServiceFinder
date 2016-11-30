//
//  Endereco.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import Foundation

class Endereco {
    
    var rua : String
    var complemento : String
    var cep : String
    var bairro : String
    var cidade : String
    var estado : String
    
    init(rua: String, complemento: String, cep: String, bairro: String, cidade: String, estado: String) {
        self.rua = rua;
        self.complemento = complemento
        self.cep = cep
        self.bairro = bairro
        self.cidade = cidade
        self.estado = estado
    }
    
    func toString() -> String {
        return rua + ", " + complemento + " - " + bairro + " - " + cidade + " / " + estado + " - CEP: " + cep
    }
}

