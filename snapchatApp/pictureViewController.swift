//
//  pictureViewController.swift
//  snapchatApp
//
//  Created by qamarali on 7/2/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit

class pictureViewController: UIViewController {

    @IBOutlet weak var descText: UITextField!
    @IBOutlet weak var displayImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func cameraButtonTapped(_ sender: Any) {
         print("I am camera")
    }
    
    @IBAction func nextTapped(_ sender: Any) {
       
        print("I am tapped")
        
    }

}
