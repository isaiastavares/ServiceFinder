//
//  Data.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import Foundation

class Data {

    var dia : Int
    var mes : Int
    var ano : Int
    
    init(dia: Int, mes: Int, ano: Int) {
        self.dia = dia
        self.mes = mes
        self.ano = ano
    }
    
    func getDia() -> Int {
        return self.dia
    }
    
    func getMes() -> Int {
        return self.mes
    }
    
    func getAno() -> Int {
        return self.ano
    }
    
}