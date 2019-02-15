//
//  TableViewController.swift
//  NoteProjet
//
//  Created by ratte valentin on 08/02/2019.
//  Copyright © 2019 ratte valentin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var notes: [Note] = [Note(title: "Reseaux", contenu: "pouloulou", dateCreation: Date(timeIntervalSince1970: 1545654354), localisation: "Belfort"),
                         Note(title: "Liste de course", contenu: "baguette - frommage - yolo", dateCreation: Date(timeIntervalSince1970: 1445654354), localisation: "Champagney"),
    Note(title: "flemme", contenu: "zzzzzzzzzzz", dateCreation: Date(timeIntervalSince1970: 1585654354), localisation: "everywhere"),
    Note(title: "helloWorld", contenu: "HelloWorld,toto,titi", dateCreation: Date(timeIntervalSince1970: 1545654354), localisation: "Belfort"),
    Note(title: "Reseaux", contenu: "pouloulou", dateCreation: Date(timeIntervalSince1970: 1545424354), localisation: "Belfort"),
    Note(title: "Reseaux", contenu: "pouloulou", dateCreation: Date(timeIntervalSince1970: 1548054354), localisation: "Belfort"),
    Note(title: "Reseaux", contenu: "pouloulou", dateCreation: Date(timeIntervalSince1970: 1549154354), localisation: "Belfort")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCellIdentifier", for: indexPath)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "fr_FR")
        let note = notes[indexPath.row]
        cell.textLabel?.text = note.title
        cell.detailTextLabel?.text = dateFormatter.string(from: note.dateCreation)
        cell.showsReorderControl = true

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            notes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedNote = notes.remove(at: fromIndexPath.row)
        notes.insert(movedNote, at: to.row)
        tableView.reloadData()
    }
 

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
