//
//  SplashViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 18.05.2021.
//

import UIKit
import Lottie

class SplashViewController: UIViewController {
    
    var router: IRouterSplash?
    var animation: IAnimateInput?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
    }
    
    private func setupAnimation() {
        animation?.runATMAnimation(in: view, completion: {[weak self] (_) in
            self?.router?.showMainViewController()
        })
    }
}
