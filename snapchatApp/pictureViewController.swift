//
//  pictureViewController.swift
//  snapchatApp
//
//  Created by qamarali on 7/2/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class pictureViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var descText: UITextField!
    @IBOutlet weak var displayImage: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        displayImage.image = image
        
        imagePicker.dismiss(animated: true, completion: nil)
    }

    @IBAction func cameraButtonTapped(_ sender: Any) {
        imagePicker.sourceType = .savedPhotosAlbum
        imagePicker.allowsEditing = false  ;
        present(imagePicker,animated: true,completion: nil)
    }
    
    @IBAction func nextTapped(_ sender: Any) {
       
        print("I am tapped")
        
    }

}
