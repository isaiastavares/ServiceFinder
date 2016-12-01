//
//  MinhaAgendaTableViewController.swift
//  ServiceFinder
//
//  Created by Student on 11/30/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import UIKit

let CONTRATO = 0
let SERVICO = 1

class MinhaAgendaTableViewController: UITableViewController {
    
    var contratos: [Contrato]?

    var dados: [[Contrato]] = [[], []]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usuarioAtual = Usuario.getUsuario()
        
        self.contratos = Contrato.getLista()
        
        for contrato in self.contratos!{
            if (contrato.contratante === usuarioAtual){
                self.dados[CONTRATO].append(contrato)
            }
            if (contrato.servico.usuario === usuarioAtual){
                self.dados[SERVICO].append(contrato)
            }
        }
        
        self.dados[CONTRATO].sortInPlace({ $0.data > $1.data })
        self.dados[SERVICO].sortInPlace({ $0.data > $1.data })

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        print("sections = ", dados.count)
        return dados.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("rows = ", dados[section].count)
        return self.dados[section].count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == CONTRATO {
            let cell = tableView.dequeueReusableCellWithIdentifier("minhaAgendaContratoIdentifier", forIndexPath: indexPath) as! MinhaAgendaTableViewCell
            
            let contrato = self.dados[indexPath.section][indexPath.row]
        
            cell.contratante_data.text = contrato.data.toString()
            cell.contratante_categoria.text = contrato.servico.categoria
            cell.contratante_usuario.text = contrato.contratante.nome
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("minhaAgendaServicoIdentifier", forIndexPath: indexPath) as! MinhaAgendaTableViewCell
            
            let servico = self.dados[indexPath.section][indexPath.row]
            
            cell.prestador_data.text = servico.data.toString()
            cell.prestador_categoria.text = servico.servico.categoria
            cell.prestador_usuario.text = servico.contratante.nome
            
            return cell
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
