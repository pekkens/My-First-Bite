//
//  CameraViewController.swift
//  My First Bite
//
//  Created by Prisca Ekkens on 11/3/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
//MARK: Outlets
    
    @IBOutlet weak var takePhoto: UIButton!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var photoFromLibrary: UIButton!
    
//MARK: Global
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self   //delegate to send photo back to the app.
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
    
//MARK: Actions
    
    @IBAction func photoFromLibrary(sender: UIButton) {
        picker.allowsEditing = false
        picker.sourceType = .PhotoLibrary
        picker.modalPresentationStyle = .Popover
        presentViewController(picker,
            animated: true,
            completion: nil)
    }
    
    @IBAction func shootPhoto(sender: UIButton) {
        if UIImagePickerController.availableCaptureModesForCameraDevice(.Rear) != nil {
            picker.allowsEditing = false
            picker.sourceType = UIImagePickerControllerSourceType.Camera
            picker.cameraCaptureMode = .Photo
            picker.modalPresentationStyle = .FullScreen
            presentViewController(picker,
                animated: true,
                completion: nil)
        } else {
            noCamera()
        }
    }
    
//MARK: Delegates
    
    
    func imagePickerController(
        picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        var chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoView.contentMode = .ScaleAspectFit
        photoView.image = chosenImage
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true,
            completion: nil)
    }
}