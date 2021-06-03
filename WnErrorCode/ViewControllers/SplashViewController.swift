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
    
    @IBOutlet weak var launchAnimation: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
    }
    
    private func setupAnimation() {
        launchAnimation.animation = Animation.named("1131-atm")
        launchAnimation.animationSpeed = 0.8
        launchAnimation.contentMode = .scaleAspectFit
        launchAnimation.play {[weak self] (done) in
            self?.router?.showMainViewController()
        }
    }
}
