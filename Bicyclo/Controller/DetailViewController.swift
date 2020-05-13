//
//  DetailViewController.swift
//  Bicyclo
//
//  Created by Yossan Rahmadi on 03/05/20.
//  Copyright © 2020 Yossan Rahmadi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var bicycleImage: UIImageView!
    @IBOutlet weak var bicycleName: UILabel!
    @IBOutlet weak var bicycleDesc: UILabel!
    @IBOutlet weak var bicyclePrice: UILabel!
    
    var bicycles: Bicycle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Detail"
        
        if let result = bicycles {
            bicycleImage.image = result.image
            bicycleDesc.text = result.description
            bicycleName.text = result.name
            bicyclePrice.text = "$" + String(format: "%.1f", result.price)
        }
    }
    
    
}
