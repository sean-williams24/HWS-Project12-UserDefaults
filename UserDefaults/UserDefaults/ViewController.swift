//
//  ViewController.swift
//  UserDefaults
//
//  Created by Sean Williams on 17/10/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let defaults = UserDefaults.standard
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseTouchID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        
        defaults.set("Paul Hudson", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")

        let dict = ["Name": "Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDict")
        
        
        let arrayUnwrapped = defaults.object(forKey:"SavedArray") as? [String] ?? [String]()
        
        let dictUnwrapped = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()

    }


}

