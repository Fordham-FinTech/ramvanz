// SecondViewController.swift
// Fordham_Coin
// Created by Jake Cadez - Fordham Coin LLC
// Copyright © 2017 Jake Cadez. All rights reserved.

import UIKit

struct profile_data {
    let cell : Int!
    let text : String!
    let image : UIImage!
}

class SettingViewController: UITableViewController {
    
    
    // Swipe back to Home from Settings
    @IBAction func swipeback_down(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_D", sender: self)
    }
    
    // There is no outlet here for the return gesture recognizer 
    // Make sure this is not the the compile isssue

    var profiledata_array = [profile_data]()
    
    override func viewDidLoad() {
        
        profiledata_array = [profile_data(cell : 1, text: "", image : #imageLiteral(resourceName: "FiN Logo"))]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return profiledata_array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if profiledata_array[indexPath.row].cell == 1{
            
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.Profile_Image.image = profiledata_array[indexPath.row].image
            cell.Username.text = profiledata_array[indexPath.row].text
            cell.Name.text = profiledata_array[indexPath.row].text
            cell.Email.text = profiledata_array[indexPath.row].text
            
            return cell
        }
        
        else {
            
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.Profile_Image.image = profiledata_array[indexPath.row].image
            // Ensure the linking 
            
            cell.Username.text = profiledata_array[indexPath.row].text
            cell.Name.text = profiledata_array[indexPath.row].text
            cell.Email.text = profiledata_array[indexPath.row].text
            
            return cell
            
        }
        
    }
 
}

