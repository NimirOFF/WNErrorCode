//
//  ImageLoader.swift
//  WnErrorCode
//
//  Created by Developer on 03.06.2021.
//

import Foundation
import UIKit

protocol IImageLoaderInput {
    func loadImage(name: String?, imageView: UIImageView)
}

class ImageLoader {}

extension ImageLoader: IImageLoaderInput{
    func loadImage(name: String?, imageView: UIImageView){
        imageView.loadAsyncImageFromFile(file: name)
    }
}
