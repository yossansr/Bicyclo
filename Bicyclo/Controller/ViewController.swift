//
//  ViewController.swift
//  Bicyclo
//
//  Created by Yossan Rahmadi on 29/04/20.
//  Copyright © 2020 Yossan Rahmadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bicycleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bicycleTableView.dataSource = self
        
        bicycleTableView.delegate = self
        
        bicycleTableView.register(UINib(nibName: "BicycleTableViewCell", bundle: nil), forCellReuseIdentifier: "BicycleCell")
    }
    @IBAction func profileButton(_ sender: UIBarButtonItem) {
        let profile = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        
        self.navigationController?.pushViewController(profile, animated: true)
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bicycles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BicycleCell", for: indexPath) as! BicycleTableViewCell
        
        let bicycle = bicycles[indexPath.row]
        cell.bicycleName.text = bicycle.name
        cell.bicycleDesc.text = bicycle.description
        cell.bicycleImage.image = bicycle.image
        
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.bicycles = bicycles[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

