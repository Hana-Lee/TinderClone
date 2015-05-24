//
//  ViewController.swift
//  TinderClone
//
//  Created by Hana Lee on 2015. 5. 25..
//  Copyright (c) 2015년 Hana Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var permissions = ["public_profile"]
        
        PFFacebookUtils.logInInBackgroundWithReadPermissions(permissions) {
            (user: PFUser?, error: NSError?) -> Void in
            if let user = user {
                if user.isNew {
                    println("User signed up and logged in through Facebook!!")
                } else {
                    println("User logged in through Facebook!!")
                }
            } else {
                println("Uh oh. The user cancelled the Facebook login..")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

