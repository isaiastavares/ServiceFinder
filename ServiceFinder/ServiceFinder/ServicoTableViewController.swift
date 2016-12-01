//
//  ServicosTableViewController.swift
//  ServiceFinder
//
//  Created by Student on 11/29/16.
//  Copyright © 2016 ServiceFinder. All rights reserved.
//

import UIKit

class ServicoTableViewController: UITableViewController {
    
    var servicos = [Servico]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.servicos = Servico.getListaServicosBusca()

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
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.servicos.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("servicoIdentifier", forIndexPath: indexPath) as! ServicoTableViewCell

        let servico = self.servicos[indexPath.row]
        
        cell.imagem.image = UIImage(named: servico.usuario.imagemPerfil)
        cell.nome.text = servico.usuario.nome
        cell.categoria.text = servico.categoria
        cell.descricao.text = servico.descricao
        cell.valor.text = "R$ \(servico.valor)"
        
        return cell
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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "mostrarDetalhesServico" {
            if let viewDetalhes = segue.destinationViewController as? DetalhesServicoViewController {
                let index = tableView.indexPathForSelectedRow?.row
                viewDetalhes.servico = servicos[index!]
            }
        }
    }

}
