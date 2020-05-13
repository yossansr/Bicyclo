//
//  BicycleTableViewCell.swift
//  Bicyclo
//
//  Created by Yossan Rahmadi on 29/04/20.
//  Copyright © 2020 Yossan Rahmadi. All rights reserved.
//

import UIKit

class BicycleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bicycleImage: UIImageView!
    @IBOutlet weak var bicycleName: UILabel!
    @IBOutlet weak var bicycleDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
