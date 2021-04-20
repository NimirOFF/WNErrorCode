//
//  cmdViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 07.04.2021.
//

import UIKit

class errorViewController: UIViewController {
    
    var descriptionError: Error!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var numberError: UILabel!
    @IBOutlet weak var devicePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = descriptionError.errorText
        numberError.text = String(descriptionError.errorCode)
        
        //how to use
        devicePic.loadAsyncImageFromFile(file: descriptionError.errorPictire)
    }
}
