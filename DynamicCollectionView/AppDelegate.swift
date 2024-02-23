//
//  AppDelegate.swift
//  DynamicCollectionView
//
//  Created by Phincon on 23/02/24.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let rootVC = ViewController() // your custom viewController. You can instantiate using nib too. UIViewController(nib name, bundle)
        
        let navController = UINavigationController(rootViewController: rootVC) // Integrate navigation controller programmatically if you want
        window?.rootViewController = navController
        
        return true
    }
    
}

