//
//  SignInViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/1/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
// MARK: Outlets
    
    @IBOutlet weak var emailUserName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //loginActivityIndicator.hidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
// MARK: Actions
    
    
    @IBAction func signInWithPasswordBtnPressed(sender: AnyObject) {
        
        if emailUserName.text == "p" && password.text == "p" {
            performSegueWithIdentifier("signInWithPasswordSegue", sender: nil)
            
            self.loginActivityIndicator.hidden = false
            self.loginActivityIndicator.startAnimating()
            delay(2.0, closure: { () -> () in
                self.loginActivityIndicator.hidden = true
                self.loginActivityIndicator.stopAnimating()
                self.performSegueWithIdentifier("signInWithPasswordSegue", sender: nil)
            })
            
        }
            
        else {
            
            let signInFailedAlert = UIAlertController(title: "Sign in Failed", message: "Incorrect email or password", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            
            signInFailedAlert.addAction(defaultAction)
            
            presentViewController(signInFailedAlert, animated: true, completion: nil)
        }
    }
    
}
