//
//  HelpCenterTableViewCell.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/26.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class HelpCenterTableViewCell: UITableViewCell {
    @IBOutlet weak var HelpImage: UIImageView!
    
    @IBOutlet weak var RightImage: UIImageView!
    @IBOutlet weak var HelpLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
