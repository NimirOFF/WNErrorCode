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
