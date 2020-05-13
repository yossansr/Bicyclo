//
//  ProfileViewController.swift
//  Bicyclo
//
//  Created by Yossan Rahmadi on 13/05/20.
//  Copyright © 2020 Yossan Rahmadi. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Profile"
        
        profileImage.image = #imageLiteral(resourceName: "profile")
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true
    }
}
