//
//  ViewController.swift
//  SimpleTableViewApp
//
//  Created by onur hüseyin çantay on 11/05/2017.
//  Copyright © 2017 onur hüseyin çantay. All rights reserved.
//

import UIKit
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    override var prefersStatusBarHidden: Bool{
        return true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    private var data = Data()
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.restaurantNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for : indexPath) as! RestaurantTableViewCell
        cell.nameLabel.text = data.restaurantNames[indexPath.row]
        cell.locationLabel.text = data.restaurantLocations[indexPath.row]
        cell.typeLabel.text = data.restaurantType[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named : data.restaurantImages[indexPath.row])
        cell.thumbnailImageView.layer.cornerRadius = 30.0
            cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }
   
		
}

