//
//  Animate.swift
//  WnErrorCode
//
//  Created by Developer on 03.06.2021.
//

import Foundation
import Lottie

protocol IAnimateInput {
    func runATMAnimation(in view: UIView, completion: LottieCompletionBlock?)
}

class Animate {
    enum AnimateFile: String {
        case atm = "1131-atm"
    }
}

extension Animate: IAnimateInput{
    
    func runATMAnimation(in view: UIView, completion: LottieCompletionBlock?) {
        let atm = AnimationView()
        atm.animation = Animation.named(AnimateFile.atm.rawValue)
        atm.animationSpeed = 0.8
        atm.frame = view.bounds
        atm.backgroundColor = .systemGray6
        atm.contentMode = .scaleAspectFit
        view.addSubview(atm)
        atm.play(completion: completion)
    }
}

