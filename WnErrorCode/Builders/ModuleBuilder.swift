//
//  ModuleBuilder.swift
//  WnErrorCode
//
//  Created by Developer on 03.06.2021.
//

import Foundation
import UIKit

protocol IModuleBulderInput {
    var animation: IAnimateInput {get}
    var imageLoader: IImageLoaderInput {get}
}

class ModuleBuilder {
    private let _animation: IAnimateInput = Animate()
    private let _imageLoader: IImageLoaderInput = ImageLoader()
}

extension ModuleBuilder: IModuleBulderInput{
    var animation: IAnimateInput {
        _animation
    }
    
    var imageLoader: IImageLoaderInput {
        _imageLoader
    }
}
