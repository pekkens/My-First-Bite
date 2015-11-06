//
//  CustomTabBarViewController.swift
//  WeekFourProjectTumblr
//
//  Created by Prisca Ekkens on 10/7/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var loadContentView: UIView!
    @IBOutlet weak var tabBarContainerView: UIView!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var symptomButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var tabBarScroll: UIScrollView!
    
//  MARK: variables
    
    var profileViewController: UIViewController!
    var currentFoodViewController: UIViewController!
    var reportViewController: UIViewController!
    var cameraViewController: UIViewController!
    var newFoodSwipeViewController: UIViewController!
    var settingsViewController: UIViewController!
    
    
//  MARK: on view did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarScroll.contentSize = CGSize(width: 475, height: 667)
        tabBarScroll.delegate = self
        
        tabBarScroll.sendSubviewToBack(tabBarContainerView)
        
        //"Main" refers to name of storyboard as in "Main.storyboard"
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //call view = build view
        
        profileViewController =
            storyboard.instantiateViewControllerWithIdentifier ("ProfileViewController") as UIViewController
        
        currentFoodViewController =
            storyboard.instantiateViewControllerWithIdentifier ("CurrentFoodViewController") as UIViewController
        
        reportViewController =
            storyboard.instantiateViewControllerWithIdentifier ("ReportViewController") as UIViewController
        
        cameraViewController =
            storyboard.instantiateViewControllerWithIdentifier ("CameraViewController") as UIViewController
        
        newFoodSwipeViewController =
            storyboard.instantiateViewControllerWithIdentifier ("NewFoodSwipeViewController") as UIViewController
        
        settingsViewController =
            storyboard.instantiateViewControllerWithIdentifier ("SettingsViewController") as UIViewController

    }
    
    
//  MARK: Actions
    
    @IBAction func settingsButtonPressed(sender: UIButton) {
        settingsViewController.view.frame = loadContentView.frame
        loadContentView.addSubview(settingsViewController.view)
        sender.selected = true
        print("settings button works")
        
    }

    
    @IBAction func foodButtonPressed(sender: UIButton) {
        newFoodSwipeViewController.view.frame = loadContentView.frame
        loadContentView.addSubview(newFoodSwipeViewController.view)
        sender.selected = true

    }
    
    @IBAction func symtomButtonPressed(sender: UIButton) {
        currentFoodViewController.view.frame = loadContentView.frame
        loadContentView.addSubview(currentFoodViewController.view)
        sender.selected = true
        
    }
    
    @IBAction func cameraButtonPressed(sender: UIButton) {
        cameraViewController.view.frame = loadContentView.frame
        loadContentView.addSubview(cameraViewController.view)
        sender.selected = true
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        loadContentView.addSubview(profileViewController.view)

    }
}

