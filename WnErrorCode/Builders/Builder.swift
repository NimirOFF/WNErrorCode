//
//  Builder.swift
//  WnErrorCode
//
//  Created by Developer on 03.06.2021.
//
import Foundation
import UIKit
import JTSImageViewController

enum VCNames: String {
    case splash, errorVC, mainVC
}

protocol IBuilderInput {
    func getSplashScreen(router: IRouterSplash)->UIViewController
    func getErrorVC(data: ErrorViewController.ErrorViewContollerDataInput)->UIViewController
    func getMainVC(router: IRouterMainVC)->UIViewController
    func getImageScreen(imageInfo: JTSImageInfo)->JTSImageViewController
}

class Builder {
    private let sb = UIStoryboard.init(name: "Main", bundle: nil)
    private let moduleBuilder: IModuleBulderInput
    
    init(moduleBuilder: IModuleBulderInput) {
        self.moduleBuilder = moduleBuilder
    }
}

extension Builder: IBuilderInput{
   
    func getSplashScreen(router: IRouterSplash) -> UIViewController {
        let vc = getVCFromName(name: .splash)
        if let vc = vc as? SplashViewController{
            vc.router = router
            vc.animation = moduleBuilder.animation
        }
        return vc
    }
    
    func getErrorVC(data: ErrorViewController.ErrorViewContollerDataInput)->UIViewController{
        let vc = getVCFromName(name: .errorVC)
        if let vc = vc as? ErrorViewController{
            vc.inputData = data
            vc.inputData.imageLoader = moduleBuilder.imageLoader
        }
        return vc
    }
    
    func getMainVC(router: IRouterMainVC) -> UIViewController {
        let vc = getVCFromName(name: .mainVC)
        if let vc = vc as? MainViewController{
            vc.router = router
        }
        return vc
    }
    
    func getImageScreen(imageInfo: JTSImageInfo)->JTSImageViewController {
        JTSImageViewController.init(imageInfo: imageInfo, mode: .image, backgroundStyle: .blurred)
    }
}

private extension Builder{
    func getVCFromName(name: VCNames) -> UIViewController{
        sb.instantiateViewController(identifier: name.rawValue)
    }
}
