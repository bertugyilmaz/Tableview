//
//  ViewController.swift
//  SimpleTableViewApp
//
//  Created by onur hüseyin çantay on 11/05/2017.
//  Copyright © 2017 onur hüseyin çantay. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    private var data =  Data()
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.restaurantNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for : indexPath) as! RestaurantTableViewCell
        let restaurantCount = data.restaurantNames.count
        
        while ( (data.restaurantType.count != restaurantCount) || (data.restaurantLocations.count != restaurantCount) || (data.restaurantImages.count != restaurantCount) )  {
            if data.restaurantType.count != restaurantCount{
            data.restaurantType.append(" ")
            }else if data.restaurantLocations.count != restaurantCount{
                data.restaurantLocations.append(" ")
            }else if data.restaurantImages.count != restaurantCount{
                data.restaurantImages.append(" ")
            }
        }
        
        cell.nameLabel.text = data.restaurantNames[indexPath.row]
        cell.locationLabel.text = data.restaurantLocations[indexPath.row]
        cell.typeLabel.text = data.restaurantType[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named : data.restaurantImages[indexPath.row])
        
        cell.thumbnailImageView.layer.cornerRadius = 30.0
        cell.thumbnailImageView.clipsToBounds = true
        
        return cell
    }
   
		
}

