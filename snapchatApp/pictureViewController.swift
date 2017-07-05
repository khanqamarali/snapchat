//
//  pictureViewController.swift
//  snapchatApp
//
//  Created by qamarali on 7/2/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit
import FirebaseStorage

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
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBAction func cameraButtonTapped(_ sender: Any) {
      print("camera tapped")
                imagePicker.sourceType = .photoLibrary
        //        imagePicker.allowsEditing = false  ;
                present(imagePicker,animated: true,completion: nil)
    }
    
    @IBAction func nextTapped(_ sender: Any) {
      
      nextButton.isEnabled = false
        let imagefolder =  Storage.storage().reference().child("images")
        let imageData = UIImageJPEGRepresentation(displayImage.image!, 0.1)!
        
        imagefolder.child("\(NSUUID().uuidString).jpg").putData(imageData, metadata: nil, completion: {(metadata,error) in
            print("We try to upload image")
            if (error != nil)
            {
                
                print("error has occured")
            }
            else
            {
            
            self.performSegue(withIdentifier: "selectUserSegue", sender: nil)
            }
        })
        
        
       
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
    }
    

}
