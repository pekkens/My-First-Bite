//
//  OnBoardingViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/1/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController, UIScrollViewDelegate, UIPageViewControllerDelegate {
    
//MARK: Outlets

    @IBOutlet weak var onBoardScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var interactiveView: UIView!
    @IBOutlet weak var dotMask01: UIView!
    @IBOutlet weak var dotMask02: UIView!
    @IBOutlet weak var dotMask03: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onBoardScrollView.contentSize = CGSize(width: 1125, height: 667)
        onBoardScrollView.delegate = self
        
        self.interactiveView.hidden = true
    }


        
//MARK: Functions
        
        func scrollViewDidScroll(scrollView: UIScrollView) {
            
            self.interactiveView.hidden = false
            
            let offset = CGFloat(onBoardScrollView.contentOffset.x)
            
            let alphaOffset = (offset + 375)
            let alpha = convertValue(alphaOffset, r1Min: 750, r1Max: 1125, r2Min: 0, r2Max: 1)
            
            interactiveView.alpha = alpha
            
            //MARK: Mask 01
            
            let mask01TransX = convertValue(offset, r1Min: 0, r1Max: 1125, r2Min: 0, r2Max: 1190)
            let mask01TransY = convertValue(offset, r1Min: 0, r1Max: 1125, r2Min: 0, r2Max: 0)
            
            dotMask01.transform = CGAffineTransformMakeTranslation (CGFloat (mask01TransX), CGFloat (mask01TransY))
            
            //MARK: Mask 02
            
            let mask02TransX = convertValue(offset, r1Min: 0, r1Max: 1125, r2Min: 0, r2Max: 0)
            let mask02TransY = convertValue(offset, r1Min: 0, r1Max: 1125, r2Min: -1150, r2Max: 1200)
            
            dotMask02.transform = CGAffineTransformMakeTranslation (CGFloat (mask02TransX), CGFloat (mask02TransY))
            
            //MARK: Mask 03
            
            let mask03TransX = convertValue(offset, r1Min: 0, r1Max: 1125, r2Min: 0, r2Max: 1400)
            let mask03TransY = convertValue(offset, r1Min: 0, r1Max: 1125, r2Min: 0, r2Max: 0)
            
            dotMask03.transform = CGAffineTransformMakeTranslation (CGFloat (mask03TransX), CGFloat (mask03TransY))
            
            
            print("scrolling... scrolling... scrolling... rawhide!")
            print("offset is: \(offset)")
            print("alpha is: \(alpha)")
            print("alphaOffset is: \(alphaOffset)")
            print("content offset: \(scrollView.contentOffset.x)")
        }
    
        func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
            
            let page: Int = Int(round(onBoardScrollView.contentOffset.x / 375))
            pageControl.currentPage = page
    }
}
