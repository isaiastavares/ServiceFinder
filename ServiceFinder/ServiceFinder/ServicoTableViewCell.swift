//
//  ServicoTableViewCell.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import UIKit

class ServicoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var nome: UILabel!

    @IBOutlet weak var categoria: UILabel!
    
    @IBOutlet weak var descricao: UITextView!
    
    @IBOutlet weak var valor: UILabel!
}
