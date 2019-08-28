//
//  MoreTableViewCell.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/23.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class MoreTableViewCell: UITableViewCell {

    
    @IBOutlet weak var MoreImage: UIImageView!
    @IBOutlet weak var MoreLabel: UILabel!
    
    @IBOutlet weak var RightImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
