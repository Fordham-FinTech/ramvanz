// FirstViewController.swift
// Fordham_Coin
// Created by Jake Cadez - Fordham Coin LLC
// Copyright © 2017 Jake Cadez. All rights reserved.

import UIKit


class FirstViewController: UIViewController {
    
    // Swipe to Transaction Platform
    @IBAction func user_rightswipe(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueRight", sender: self)
    }
    
    
    // Swipe to Personal Identifier
    @IBAction func user_leftswipe(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueLeft", sender: self)
    }
    
    // Swipe down to QR Scanner
    @IBAction func user_downswipe(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueDown", sender: self)
    }
    
    // Swipe back to Home from ID
    @IBAction func swipeback_right(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_L", sender: self)
    }

    // Swipe back to Home from Transactions 
    @IBAction func swiperback_left(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_R", sender: self)
    }
    
    // Swipe back to Home from QR Scanner
    @IBAction func swipeback_up(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_U", sender: self)
    }
    
    
    // Remove outlets for swipe up and ensure that the connects are not empty 
    // Problem with compiling occurs due to the settings viewcontroller -- fix asap!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        setupMenuBar()
    }
    
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    private func setupMenuBar(){
        view.addSubview(menuBar)
        //view.addConstraint("H:|[v0]|")
        
        //view.addConstraintsWithFormat("H: |[v0]|", views: menuBar)
        //view.addConstraintsWithFormat("V: |[v0]|", views: menuBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

