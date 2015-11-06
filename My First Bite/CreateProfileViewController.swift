//
//  CreateProfileViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/2/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//
import Foundation
import UIKit

class CreateProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
//MARK: Global 
    
    let pickerForProfile = UIImagePickerController()
    
//MARK: Outlets
    
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var genderSwitch: UISwitch!
    @IBOutlet weak var profilePhotoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //the required delegate to get a photo back to the app!!
        pickerForProfile.delegate = self
    }
    
//MARK: Actions
    
    @IBAction func genderChanged(sender: AnyObject) {
        
        if genderSwitch.on
            
        {
            genderLabel.text = "I'm a Girl!"
        }
            
        else
            
        { genderLabel.text = "I'm a Boy!"
            
        }
    }
    

    
    func noCamera(){
        let alertVC = UIAlertController(
            title: "No Camera Detected",
            message: "You might want to get a camera",
            preferredStyle: .Alert)
        let okAction = UIAlertAction(
            title: "OK",
            style:.Default,
            handler: nil)
        alertVC.addAction(okAction)
        presentViewController(
            alertVC,
            animated: true,
            completion: nil)
    }
    
    @IBAction func shootPhoto(sender: UIButton) {
        if UIImagePickerController.availableCaptureModesForCameraDevice(.Rear) != nil {
            pickerForProfile.allowsEditing = false
            pickerForProfile.sourceType = UIImagePickerControllerSourceType.Camera
            pickerForProfile.cameraCaptureMode = .Photo
            pickerForProfile.modalPresentationStyle = .FullScreen
            presentViewController(pickerForProfile,
                animated: true,
                completion: nil)
        } else {
            noCamera()
        }
    }
    
    @IBAction func saveProfileBtnPressed(sender: AnyObject) {
        
        print("the button \(saveProfileBtnPressed) is working")
        
        self.performSegueWithIdentifier("tabBarViewControllerSegue", sender: nil)
    }

    
//MARK: Delegates
        
        
        func imagePickerController(
            pickerForProfile: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [String : AnyObject])
        {
            var chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            profilePhotoView.contentMode = .ScaleAspectFit
            profilePhotoView.image = chosenImage
            dismissViewControllerAnimated(true, completion: nil)
        }
        func imagePickerControllerDidCancel(picker: UIImagePickerController) {
            dismissViewControllerAnimated(true,
                completion: nil)
        }
}
