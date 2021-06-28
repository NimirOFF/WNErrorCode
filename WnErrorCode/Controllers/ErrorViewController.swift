//
//  cmdViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 07.04.2021.
//

import UIKit
import JTSImageViewController

class ErrorViewController: UIViewController {
    
    var descriptionError: Error!
    
    @IBOutlet weak var textError: UILabel!
    @IBOutlet weak var numberError: UILabel!
    @IBOutlet weak var devicePic: UIImageView!
    @IBOutlet weak var fixError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textError.text = "Описание: \n\(descriptionError.errorText)"
        numberError.text = "SCOD: \(String(format: "%02d", descriptionError.errorCode))"
        fixError.text = "Решение: \n\(descriptionError.errorFix)"
        
        
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
