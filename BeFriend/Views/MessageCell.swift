//
//  MessageCell.swift
//  BeFriend
//
//  Created by Danijela Vrzan on 2020-01-27.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var rightAvatarImageView: UIImageView!
    @IBOutlet weak var leftAvatarImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
