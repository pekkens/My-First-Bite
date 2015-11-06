//
//  SignUpViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/1/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signInBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func createAccountBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("createAccountSegue", sender: nil)
    }
    
}
