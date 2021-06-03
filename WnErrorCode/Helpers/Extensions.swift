//
//  Extensions.swift
//  WnErrorCode
//
//  Created by Dmitry Filippov on 20.04.2021.
//

import Foundation
import UIKit

extension UIImageView{
    func loadAsyncImageFromFile(file: String?){
        guard let file = file else {
            return
        }
        DispatchQueue.init(label: "").sync {[weak self] in
            let image = UIImage.init(named: file)
            DispatchQueue.main.async {
                self?.image = image
            }
        }
    }
}


extension UINavigationController {
    func fadeTo(_ viewController: UIViewController) {
        let transition: CATransition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.fade
        view.layer.add(transition, forKey: nil)
        pushViewController(viewController, animated: false)
    }
}

