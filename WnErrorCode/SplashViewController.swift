//
//  SplashViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 18.05.2021.
//

import UIKit
import Lottie


class SplashViewController: UIViewController {
    
    let launchAnimation = AnimationView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupAnimation()
    }
    
    func setupAnimation() {
        launchAnimation.animation = Animation.named("1131-atm")
        launchAnimation.animationSpeed = 0.8
        launchAnimation.frame = view.bounds
        launchAnimation.backgroundColor = .systemGray6
        launchAnimation.contentMode = .scaleAspectFit
        launchAnimation.play()
        view.addSubview(launchAnimation)
        launchAnimation.play { (done) in
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as? ViewController {
                vc.modalTransitionStyle = .crossDissolve
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
            }
        }
    }
}
