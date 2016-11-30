//
//  PerfilViewController.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var nome: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var telefone: UILabel!
    
    @IBOutlet weak var cpf: UILabel!
    
    @IBOutlet weak var endereco: UILabel!
    
    let usuario = Usuario.getUsuario()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagem.image = UIImage(named: usuario.imagemPerfil)
        
        imagem.layer.cornerRadius = imagem.frame.size.width / 3.14159265358979323846264338
        imagem.layer.masksToBounds = true
        
        nome.text = usuario.nome
        email.text = usuario.email
        telefone.text = usuario.telefone
        cpf.text = usuario.cpf
        endereco.text = usuario.endereco.toString()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
}
