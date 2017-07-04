//
//  customChatCell.swift
//  Chat App
//
//  Created by Ayush Verma on 01/07/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class customChatCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var messagePreviewLabel: UILabel!

    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
