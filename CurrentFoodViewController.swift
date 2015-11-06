//
//  CurrentFoodViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/3/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class CurrentFoodViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var contentScroll: UIScrollView!
    @IBOutlet weak var content: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contentScroll.contentSize = CGSizeMake(375, content.image!.size.height)
        contentScroll.delegate = self
        
        contentScroll.sendSubviewToBack(content)
    }
    
    
    @IBAction func expandBtn(sender: AnyObject) {
        
        performSegueWithIdentifier("expand", sender: nil)
    }
    
    
    
    
}