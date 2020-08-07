//
//  musicListTVC.swift
//  MediFocus
//
//  Created by MEHMET ONUR ÜSTÜNEL on 29.07.2020.
//  Copyright © 2020 MEHMET ONUR ÜSTÜNEL. All rights reserved.
//

import UIKit

class musicListTVC: UITableViewCell {

    
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var musicNameLabel: UILabel!
   @IBOutlet weak var musicSingerName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
