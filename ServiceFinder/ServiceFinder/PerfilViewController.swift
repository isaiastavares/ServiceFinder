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
    
    @IBOutlet weak var telefone: UIStackView!
    
    @IBOutlet weak var cpf: UILabel!
    
    @IBOutlet weak var endereco: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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