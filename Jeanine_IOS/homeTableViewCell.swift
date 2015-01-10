//
//  homeTableViewCell.swift
//  Jeanine_IOS
//
//  Created by Qihan Zhu on 1/9/15.
//  Copyright (c) 2015 Jianzhong Chen. All rights reserved.
//

import UIKit

class homeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var target_image: UIImageView!
    @IBOutlet weak var user_name: UILabel!
    @IBOutlet weak var target_time: UILabel!
    @IBOutlet weak var target_like: UILabel!
    @IBOutlet weak var target_comment: UILabel!
    
    @IBAction func target_action(sender: AnyObject) {
        NSLog("do some actions")
    }
    
    func update(name: String, image: String, time: String, like: Int, comment: Int) {
        self.user_name.text = name
        self.target_time.text = time
        self.target_like.text = String(like)
        self.target_comment.text = String(comment)
        self.target_image.image = UIImage(named: image)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
