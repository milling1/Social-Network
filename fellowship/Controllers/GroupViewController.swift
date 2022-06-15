//
//  GroupViewController.swift
//  fellowship
//
//  Created by user on 17.04.2022.
//

import UIKit

class GroupViewController: UITableViewController {
    
    @IBAction func addSelectedGroup(segue: UIStoryboardSegue) {
        
        if let sourceVC = segue.source as? OtherGroupController,
           let index = sourceVC.tableView.indexPathForSelectedRow {
            let newGroup = sourceVC.otherGroup[index.row]
         
            
            if !group.contains(where: {$0.name == newGroup.name}) {
                group.append(newGroup)
                tableView.reloadData()
            }
           
        }
            
    }
    
    var group = [
        Group(avatar: UIImage.init(imageLiteralResourceName: "professional-detective-with-mustaches-magnifier-follows-footprints_87689-1154 Small"), name: "DETECTIVE"),
        Group(avatar: UIImage.init(imageLiteralResourceName: "easter-school-holidays-on-the-gold-coast-900x540 Small"), name: "HOLIDAY"),
        Group(avatar: UIImage.init(imageLiteralResourceName: "Scrooge_McDuck"), name: "Easy ways to make money quickly"),
    ]

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return group.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupViewCell", for: indexPath) as? GroupViewCell else {
            preconditionFailure("Error cell")
        }

        // Configure the cell...
        
        cell.avatarGroup.image = group[indexPath.row].avatar
        cell.nameGroup.text = group[indexPath.row].name

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            group.remove(at: indexPath.row)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
   

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
