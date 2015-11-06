//
//  CurrentFood02ViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/5/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class CurrentFood02ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var contentScroll02: UIScrollView!
    @IBOutlet weak var content02: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentScroll02.contentSize = CGSizeMake(375, content02.image!.size.height)
        contentScroll02.delegate = self
        
        contentScroll02.sendSubviewToBack(content02)
    }
    
    
    
    
}

