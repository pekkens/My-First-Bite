//
//  IntroViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/1/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {


// MARK: Outlets
    
    @IBOutlet weak var introScroll: UIScrollView!
    @IBOutlet weak var introImageBkdg: UIImageView!
    @IBOutlet weak var apple: UIImageView!
    @IBOutlet weak var avocado: UIImageView!
    @IBOutlet weak var blueberry01: UIImageView!
    @IBOutlet weak var blueberry02: UIImageView!
    @IBOutlet weak var banana: UIImageView!
    @IBOutlet weak var carrot: UIImageView!
    @IBOutlet weak var orange: UIImageView!
    @IBOutlet weak var pear: UIImageView!
    @IBOutlet weak var plum: UIImageView!
    @IBOutlet weak var strawberry: UIImageView!
    @IBOutlet weak var yam: UIImageView!
    @IBOutlet weak var appTitleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        introScroll.contentSize = CGSizeMake(375, introImageBkdg.image!.size.height)
        introScroll.delegate = self
        
        introScroll.sendSubviewToBack(introImageBkdg)
        
        
    }
    
// MARK: Functions
    
    
    
    func scrollViewDidScroll(introScroll: UIScrollView) {
        
        let offset = CGFloat(introScroll.contentOffset.y)
        let alpha = convertValue(offset, r1Min: 0, r1Max: 300, r2Min:0, r2Max: 0)
        
        
        //title
        
        let appTitleViewTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        let appTitleViewTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 530)
        let appTitleViewScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1)
        
        appTitleView.transform = CGAffineTransformMakeTranslation (CGFloat (appTitleViewTransX), CGFloat (appTitleViewTransY))
        appTitleView.transform = CGAffineTransformScale(appTitleView.transform, CGFloat(appTitleViewScale), CGFloat(appTitleViewScale))

        
        //apple
        
        let appleTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 400, r2Max: 0)
        let appleTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1150, r2Max: 0)
        let appleScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1.0)
        let appleRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 360, r2Max: 0)
        
        apple.transform = CGAffineTransformMakeTranslation (CGFloat (appleTransX), CGFloat (appleTransY))
        apple.transform = CGAffineTransformScale(apple.transform, CGFloat(appleScale), CGFloat(appleScale))
        apple.transform = CGAffineTransformRotate(apple.transform, CGFloat(Double(appleRotation) * M_PI / 180))
        
        //avocado

        let avocadoTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        let avocadoTransY = convertValue(offset, r1Min: 0, r1Max: 667, r2Min: -1550, r2Max: 0)
        let avocadoScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1)
        let avocadoRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        
        avocado.transform = CGAffineTransformMakeTranslation (CGFloat (avocadoTransX), CGFloat (appleTransY))
        avocado.transform = CGAffineTransformScale(avocado.transform, CGFloat(avocadoScale), CGFloat(avocadoScale))
        avocado.transform = CGAffineTransformRotate(avocado.transform, CGFloat(Double(avocadoRotation) * M_PI / 180))
        
        //blueberry01
        
        let blueberry01TransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        let blueberry01TransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1150, r2Max: 0)
        let blueberry01Scale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 2.0, r2Max: 1)
        let blueberry01Rotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -180, r2Max: 0)
        
        blueberry01.transform = CGAffineTransformMakeTranslation (CGFloat (blueberry01TransX), CGFloat (blueberry01TransY))
        blueberry01.transform = CGAffineTransformScale(blueberry01.transform, CGFloat(blueberry01Scale), CGFloat(blueberry01Scale))
        blueberry01.transform = CGAffineTransformRotate(blueberry01.transform, CGFloat(Double(blueberry01Rotation) * M_PI / 180))
        
        //blueberry02
        
        let blueberry02TransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 1)
        let blueberry02TransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1150, r2Max: 0)
        let blueberry02Scale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 2.0, r2Max: 0.5)
        let blueberry02Rotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 180)
        
        blueberry02.transform = CGAffineTransformMakeTranslation (CGFloat (blueberry02TransX), CGFloat (blueberry02TransY))
        blueberry02.transform = CGAffineTransformScale(blueberry02.transform, CGFloat(blueberry02Scale), CGFloat(blueberry02Scale))
        blueberry02.transform = CGAffineTransformRotate(blueberry02.transform, CGFloat(Double(blueberry02Rotation) * M_PI / 180))
        
        //banana
        
        let bananaTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 200, r2Max: 0)
        let bananaTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1550, r2Max: 0)
        let bananaScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1.0)
        let bananaRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 160, r2Max: 0)
        
        banana.transform = CGAffineTransformMakeTranslation (CGFloat (bananaTransX), CGFloat (appleTransY))
        banana.transform = CGAffineTransformScale(banana.transform, CGFloat(bananaScale), CGFloat(bananaScale))
        banana.transform = CGAffineTransformRotate(banana.transform, CGFloat(Double(bananaRotation) * M_PI / 180))
        
        //carrot
        
        let carrotTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        let carrotTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1250, r2Max: 0)
        let carrotScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1.0)
        let carrotRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 180, r2Max: 0)
        
        carrot.transform = CGAffineTransformMakeTranslation (CGFloat (carrotTransX), CGFloat (carrotTransY))
        carrot.transform = CGAffineTransformScale(carrot.transform, CGFloat(carrotScale), CGFloat(carrotScale))
        carrot.transform = CGAffineTransformRotate(carrot.transform, CGFloat(Double(carrotRotation) * M_PI / 180))
        
        //orange
        
        let orangeTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        let orangeTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1250, r2Max: 0)
        let orangeScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1.0)
        let orangeRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 360, r2Max: 0)
        
        orange.transform = CGAffineTransformMakeTranslation (CGFloat (orangeTransX), CGFloat (orangeTransY))
        orange.transform = CGAffineTransformScale(orange.transform, CGFloat(orangeScale), CGFloat(orangeScale))
        orange.transform = CGAffineTransformRotate(orange.transform, CGFloat(Double(orangeRotation) * M_PI / 180))
        
        //pear
        
        let pearTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -300, r2Max: 0)
        let pearTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1750, r2Max: 0)
        let pearScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1.0)
        let pearRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -120, r2Max: 0)
        
        pear.transform = CGAffineTransformMakeTranslation (CGFloat (pearTransX), CGFloat (pearTransY))
        pear.transform = CGAffineTransformScale(pear.transform, CGFloat(pearScale), CGFloat(pearScale))
        pear.transform = CGAffineTransformRotate(pear.transform, CGFloat(Double(pearRotation) * M_PI / 180))
    
        //plum
        
        let plumTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -500, r2Max: 0)
        let plumTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1150, r2Max: 0)
        let plumScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 1.0, r2Max: 1.0)
        let plumRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 360, r2Max: 0)
        
        plum.transform = CGAffineTransformMakeTranslation (CGFloat (plumTransX), CGFloat (plumTransY))
        plum.transform = CGAffineTransformScale(plum.transform, CGFloat(plumScale), CGFloat(plumScale))
        plum.transform = CGAffineTransformRotate(plum.transform, CGFloat(Double(plumRotation) * M_PI / 180))
        
        //strawberry
        
        let strawberryTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        let strawberryTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1350, r2Max: 0)
        let strawberryScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0.5, r2Max: 1.0)
        let strawberryRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 0, r2Max: 0)
        
        strawberry.transform = CGAffineTransformMakeTranslation (CGFloat (strawberryTransX), CGFloat (strawberryTransY))
        strawberry.transform = CGAffineTransformScale(strawberry.transform, CGFloat(strawberryScale), CGFloat(strawberryScale))
        strawberry.transform = CGAffineTransformRotate(strawberry.transform, CGFloat(Double(strawberryRotation) * M_PI / 180))
        
        //yam
        
        let yamTransX = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -100, r2Max: 0)
        let yamTransY = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -1450, r2Max: 0)
        let yamScale = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: 2.0, r2Max: 1.0)
        let yamRotation = convertValue(offset, r1Min: 0, r1Max: 733, r2Min: -180, r2Max: 0)
        
        yam.transform = CGAffineTransformMakeTranslation (CGFloat (yamTransX), CGFloat (yamTransY))
        yam.transform = CGAffineTransformScale(yam.transform, CGFloat(yamScale), CGFloat(yamScale))
        yam.transform = CGAffineTransformRotate(yam.transform, CGFloat(Double(yamRotation) * M_PI / 180))
    
        print("content offset: \(introScroll.contentOffset)")
        
    }
    
// MARK: Actions
   
    
    @IBAction func signInBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("signInSeque", sender: nil)
    }
    
    
}
