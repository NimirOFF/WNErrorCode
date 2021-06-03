//
//  cmdViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 07.04.2021.
//

import UIKit
import JTSImageViewController

class ErrorViewController: UIViewController {
    
    struct ErrorViewContollerDataInput {
        let router: IRouterErrorVC
        let descriptionError: Error
        var imageLoader: IImageLoaderInput?
    }
    
    var inputData:ErrorViewContollerDataInput!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var numberError: UILabel!
    @IBOutlet weak var devicePic: UIImageView!
    @IBOutlet weak var fixError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let error = inputData.descriptionError
        label.text = "Описание: \n\(error.errorText)"
        numberError.text = String(format: "%02d", error.errorCode)
        fixError.text = "Решение: \n\(error.errorFix)"
        inputData.imageLoader?.loadImage(name: error.errorPictire, imageView: devicePic)
    }
    
    @IBAction func tapImageView(_ sender: Any) {
        guard let image = devicePic.image else {
            return
        }
        
        let imageInfo = JTSImageInfo.init()
        imageInfo.image = image
        imageInfo.referenceRect = devicePic.frame
        imageInfo.referenceView = view
        
        inputData.router.openImage(imageInfo: imageInfo)
    }
}
