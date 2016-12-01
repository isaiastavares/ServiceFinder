//
//  Data.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import Foundation

class Data : Comparable{

    var dia : Int
    var mes : Int
    var ano : Int
    var hora: Int
    var minuto: Int
    
    init(dia: Int, mes: Int, ano: Int, hora: Int, minuto: Int) {
        self.dia = dia
        self.mes = mes
        self.ano = ano
        self.hora = hora
        self.minuto = minuto
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
    
    func getHora() -> Int {
        return self.hora
    }
    
    func getMinuto() -> Int {
        return self.minuto
    }
    
}

func < (lhs: Data, rhs: Data) -> Bool {
    return
        lhs.getAno() > rhs.getAno() ? false :
            lhs.getMes() > rhs.getMes() ? false :
                lhs.getDia() > rhs.getDia() ? false :
                    lhs.getHora() > rhs.getHora() ? false :
                        lhs.getMinuto() > rhs.getMinuto() ? false : true
}

func == (lhs: Data, rhs: Data) -> Bool {
    return
        lhs.getAno() != rhs.getAno() ? false :
            lhs.getMes() != rhs.getMes() ? false :
                lhs.getDia() != rhs.getDia() ? false :
                    lhs.getHora() != rhs.getHora() ? false :
                        lhs.getMinuto() != rhs.getMinuto() ? false : true
}