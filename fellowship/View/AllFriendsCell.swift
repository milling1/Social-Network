//
//  AllFriendsCell.swift
//  fellowship
//
//  Created by user on 16.04.2022.
//

import UIKit

class AllFriendsCell: UITableViewCell {
    
    
    @IBOutlet weak var avatarFriendsView: UIImageView!
    
    @IBOutlet weak var nameFriendLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
