//
//  GaragemTableViewController.swift
//  GaragemRealm
//
//  Created by Swift on 17/01/2018.
//  Copyright © 2018 Corporate. All rights reserved.
//

import UIKit
import RealmSwift

class GaragemTableViewController: UITableViewController {
    
    // Array dos objetos que serão exibidos na TableView
    var carros = [Carro]()
    
    // Resgatar uma instância do Realm
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func novoCarro(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Adicionar carro", message: "Digite o nome do carro e toque em adicionar", preferredStyle: .alert)
        
        // Adicionando campo de texto no alert
        alert.addTextField { (textField) in
            textField.autocapitalizationType = .words
            textField.placeholder = "C63 AMG Black Series"
        }
        
        // Adicionar o botão de adicionar no alert
        alert.addAction(UIAlertAction(title: "Adicionar", style: .default, handler: { (_) in
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        // Exibir o alert
        self.navigationController?.present(alert, animated: true, completion: nil)
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
