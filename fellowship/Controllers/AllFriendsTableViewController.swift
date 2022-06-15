//
//  AllFriendsTableViewController.swift
//  fellowship
//
//  Created by user on 16.04.2022.
//

import UIKit

class AllFriendsTableViewController: UITableViewController {
    
    let friends = [
        Friends(avatar: UIImage.init(imageLiteralResourceName: "CHIP Small"), name: "CHIP"),
        Friends(avatar: UIImage.init(imageLiteralResourceName: "dale-chipanddalerescuerangers Small"), name: "DALE"),
        Friends(avatar: UIImage.init(imageLiteralResourceName: "Monterey_Jack_DT Small"), name: "Monterey Jack"),
        Friends(avatar: UIImage.init(imageLiteralResourceName: "Gadget Hackwrench Small"), name: "Gadget Hackwrench"),
        Friends(avatar: UIImage.init(imageLiteralResourceName: "Zipper Small"), name: "Zipper"),
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
        return friends.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllFriendsCell", for: indexPath) as? AllFriendsCell else {
            preconditionFailure("Error cell")
        }

        // Configure the cell...
//        print(indexPath.section)
//        print(indexPath.row)
        
        cell.nameFriendLabel.text = friends[indexPath.row].name
        cell.avatarFriendsView.image = friends[indexPath.row].avatar
        

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToMyFriend",
           let destinationVC = segue.destination as? MyFriendCollectionViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            let friends = friends[indexPath.row].name
            destinationVC.title = friends
            destinationVC.cellSelection = indexPath.row
           
        }
        
        
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
