//
//  CustomChatDetailCell.swift
//  Chat App
//
//  Created by Ayush Verma on 06/07/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class CustomChatDetailCell: UITableViewCell {
    
    @IBOutlet weak var leftMessageLabel: UILabel!
    @IBOutlet weak var rightMessageLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
