//
//  Router.swift
//  WnErrorCode
//
//  Created by Developer on 03.06.2021.
//

import Foundation
import UIKit
import JTSImageViewController

protocol IRouterErrorVC {
    func openImage(imageInfo: JTSImageInfo)
}

protocol IRouterMainVC {
    func showErrorViewController(error: Error)
}

protocol IRouterSplash {
    func showMainViewController()
}

protocol IRouterAppDelegate {
    func showSplash() -> UIViewController
}

protocol IRouterAll: IRouterSplash, IRouterErrorVC, IRouterMainVC, IRouterAppDelegate{}

class Router {
    
    private let navigationController: UINavigationController = {
        let nav = UINavigationController()
        nav.setNavigationBarHidden(true, animated: false)
        return nav
    }()
    
    private let builder: IBuilderInput
    
    init(builder: IBuilderInput) {
        self.builder = builder
    }
    
    private func getLastViewController()->UIViewController?{
        navigationController.viewControllers.last
    }
}

extension Router: IRouterAll{
    
    func showSplash() -> UIViewController {
        navigationController.viewControllers = [builder.getSplashScreen(router: self)]
        return navigationController
    }
    
    func showErrorViewController(error: Error){
        let data = ErrorViewController.ErrorViewContollerDataInput.init(router: self, descriptionError: error)
        let vc = builder.getErrorVC(data: data)
        getLastViewController()?.present(vc, animated: true, completion: nil)
    }
    
    func showMainViewController(){
        let vc = builder.getMainVC(router: self)
        navigationController.fadeTo(vc)
    }
    
    func openImage(imageInfo: JTSImageInfo) {
        builder.getImageScreen(imageInfo: imageInfo).show(
            from: getLastViewController()!.presentedViewController,
            transition: .fromOriginalPosition
        )
    }
}
