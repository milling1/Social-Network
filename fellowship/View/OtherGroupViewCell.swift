//
//  OtherGroupViewCell.swift
//  fellowship
//
//  Created by user on 17.04.2022.
//

import UIKit

class OtherGroupViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarOtherGroup: UIImageView!
    @IBOutlet weak var nameOtherGropu: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
