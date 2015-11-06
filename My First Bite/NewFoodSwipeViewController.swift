//
//  NewFoodSwipeViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/4/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class NewFoodSwipeViewController: UIViewController, UIScrollViewDelegate, UIPageViewControllerDelegate {
    
    @IBOutlet weak var cardBanana: UIImageView!
    @IBOutlet var cardBananaGesture: UIPanGestureRecognizer!
    //@IBOutlet var cardBananaTap: UITapGestureRecognizer!
    @IBOutlet weak var cardScrollView: UIScrollView!
    @IBOutlet weak var cardImageBkdg: UIImageView!
    @IBOutlet weak var cardStrawberry: UIImageView!
    @IBOutlet var cardStrawberryGesture: UIPanGestureRecognizer!
    @IBOutlet weak var cardPageControl: UIPageControl!
    @IBOutlet var cardBananaSwipe: UISwipeGestureRecognizer!
    
    var cardBananaInitialCenter: CGPoint!
    var cardStrawberryInitialCenter: CGPoint!
    var currentFoodViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardScrollView.contentSize = CGSize(width: 1000, height: 500)
        cardScrollView.delegate = self
        
    }
    
// Functions
    
    func gestureRecognizer(_: UIGestureRecognizer,shouldRecognizeSimultaneouslyWithGestureRecognizer:UIGestureRecognizer) -> Bool {
        return true
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let offset = CGFloat(cardScrollView.contentOffset.x)
        
        print("scrolling... scrolling... scrolling... rawhide!")
        print("offset is: \(offset)")
        print("content offset: \(scrollView.contentOffset.x)")
        
        
        let cardBananaTransX = convertValue(offset, r1Min: 0, r1Max: 1000, r2Min: 0, r2Max: 100)
        let cardBananaTransY = convertValue(offset, r1Min: 0, r1Max: 0, r2Min: 0, r2Max: 0)
        let cardBananaScale = convertValue(offset, r1Min: 0, r1Max: 1000, r2Min: 1.0, r2Max: 1.2)
        
        cardBanana.transform = CGAffineTransformMakeTranslation (CGFloat (cardBananaTransX), CGFloat (cardBananaTransY))
        cardBanana.transform = CGAffineTransformScale(cardBanana.transform, CGFloat(cardBananaScale), CGFloat(cardBananaScale))
        
        cardBanana.transform = CGAffineTransformMakeRotation(CGFloat(5 * M_PI / 180))
        
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        let page: Int = Int(round(cardScrollView.contentOffset.x / 250))
        
        cardPageControl.currentPage = page
    }
    
// Actions
    
//    @IBAction func onTapCardBanana(sender: UITapGestureRecognizer) {
//        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        
//        currentFoodViewController =
//            storyboard.instantiateViewControllerWithIdentifier ("CurrentFoodViewController") as UIViewController
//        
//        print("you've been tapped")
//    }
    
    @IBAction func onPanStrawberry(sender: UIPanGestureRecognizer) {
        print("working")
        
        let location = sender.locationInView(view)
        let translation = sender.translationInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            
            cardStrawberryInitialCenter = cardStrawberry.center
            
            NSLog("pan Begins \(location)")
            
            UIView.animateWithDuration(
                0.2, delay:
                0, usingSpringWithDamping:
                0.0, initialSpringVelocity:
                0.0, options: [], animations: { () -> Void in
                    self.cardStrawberry.transform = CGAffineTransformMakeScale(1.3, 1.3)
                }, completion: nil)
            
            
        } else if sender.state == UIGestureRecognizerState.Changed{
            
            NSLog("panning \(location)")
            
            cardStrawberry.center = (CGPoint(x:
            cardStrawberryInitialCenter.x + translation.x, y:
            cardStrawberryInitialCenter.y + translation.y))
            //cardStrawberry.transform = CGAffineTransformMakeRotation(CGFloat(15 * M_PI / 180))
            //cardStrawberry.transform = CGAffineTransformMakeTranslation(50, 50)
            
        } else if sender.state == UIGestureRecognizerState.Ended{
            
            NSLog("pan Ends \(location)")
            NSLog("translation \(translation)")
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.cardStrawberry.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
        }
    }
    
    @IBAction func onPanBanana(sender: UIPanGestureRecognizer) {
        print("working")
        
        let location = sender.locationInView(view)
        let translation = sender.translationInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            
            cardBananaInitialCenter = cardBanana.center
            
            NSLog("pan Begins \(location)")
            
            UIView.animateWithDuration(
                0.2, delay:
                0, usingSpringWithDamping:
                0.0, initialSpringVelocity:
                0.0, options: [], animations: { () -> Void in
                self.cardBanana.transform = CGAffineTransformMakeScale(1.3, 1.3)
                }, completion: nil)
            
        } else if sender.state == UIGestureRecognizerState.Changed{
            
            NSLog("panning \(location)")
            
            cardBanana.center = (CGPoint(x:
            cardBananaInitialCenter.x + translation.x, y:
            cardBananaInitialCenter.y + translation.y))
            
        } else if sender.state == UIGestureRecognizerState.Ended{
            
            NSLog("pan Ends \(location)")
            NSLog("translation \(translation)")
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.cardBanana.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
        }
    }
    



}














