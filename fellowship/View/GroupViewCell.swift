//
//  GroupViewCell.swift
//  fellowship
//
//  Created by user on 17.04.2022.
//

import UIKit

class GroupViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarGroup: UIImageView!
    
    @IBOutlet weak var nameGroup: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
