//
//  ProgramLibraryUITableViewCell.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/15.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ProgramLibraryUITableViewCell: UITableViewCell {
    @IBOutlet weak var SessionImage: UIImageView!
    
    @IBOutlet weak var SessionName: UILabel!
    @IBOutlet weak var SessionDetial: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
