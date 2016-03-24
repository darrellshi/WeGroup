//
//  ContactCell.swift
//  WeGroup
//
//  Created by Darrell Shi on 2/26/16.
//  Copyright © 2016 WeGroup Inc. All rights reserved.
//

import UIKit
import Parse

class ContactCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    var contact: Contact! {
        didSet {
            usernameLabel.text = contact.username
            profileImageView.contentMode = UIViewContentMode.ScaleAspectFill
            profileImageView.clipsToBounds = true
            profileImageView.layer.cornerRadius = 23
            if let profileData = contact.profileImageData {
                let image = UIImage(data: profileData)
                profileImageView.image = image
            } else {
                if let red = contact.red, green = contact.green, blue = contact.blue {
                    profileImageView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 0.5)
                }
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
