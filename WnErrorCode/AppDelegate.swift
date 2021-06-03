//
//  AppDelegate.swift
//  WnErrorCode
//
//  Created by Mac mini on 05.04.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window : UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configureDI()
        return true
    }
    
    private func configureDI(){
        let builder = Builder()
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let router = Router(builder: builder)
        window?.rootViewController = router.showSplash()
        window?.makeKeyAndVisible()
    }
}


