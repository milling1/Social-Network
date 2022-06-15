//
//  MyFriendCollectionViewController.swift
//  fellowship
//
//  Created by user on 17.04.2022.
//

import UIKit


class MyFriendCollectionViewController: UICollectionViewController {
    
    let photoArray = [
        PhotoFriend(photo: UIImage.init(imageLiteralResourceName: "ChipOnly Small")),
        PhotoFriend(photo: UIImage.init(imageLiteralResourceName: "Dale Small")),
        PhotoFriend(photo: UIImage.init(imageLiteralResourceName: "monterey_jack___rescue_rangers_by_johnslaughter_d855mqp-fullview Small")),
        PhotoFriend(photo: UIImage.init(imageLiteralResourceName: "Gadget Small")),
        PhotoFriend(photo: UIImage.init(imageLiteralResourceName: "Zipper")),
    ]
    
    var cellSelection:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyFriendCollectionViewCell", for: indexPath) as? MyFriendCollectionViewCell else {
            preconditionFailure("Error collection cell")
        }
    
        // Configure the cell
        
        cell.pictureMyFriend.image = photoArray[cellSelection].photo
    
        return cell
    }

    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
