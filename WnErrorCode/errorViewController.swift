//
//  cmdViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 07.04.2021.
//

import UIKit
import JTSImageViewController

class errorViewController: UIViewController {
    
    var descriptionError: Error!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var numberError: UILabel!
    @IBOutlet weak var devicePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = descriptionError.errorText
        numberError.text = String(format: "%02d", descriptionError.errorCode)
        
        //how to use
        devicePic.loadAsyncImageFromFile(file: descriptionError.errorPictire)
    }
    
    @IBAction func tapImageView(_ sender: Any) {
        guard let image = devicePic.image else {
            return
        }
        
        let imageInfo = JTSImageInfo.init()
        imageInfo.image = image
        imageInfo.referenceRect = devicePic.frame
        imageInfo.referenceView = view
        
        let vc = JTSImageViewController.init(imageInfo: imageInfo, mode: .image, backgroundStyle: .scaled)
        vc?.show(from: self, transition: .fromOriginalPosition)
    }
}
