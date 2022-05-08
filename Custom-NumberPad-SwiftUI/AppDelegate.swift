//
//  AppDelegate.swift
//  Custom-NumberPad-SwiftUI
//
//  Created by Mac on 07/05/22.
//

import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        // Titles
        let title: String = "Create a PIN"
        let subTitle1: String = "This Pin will unloack your Winkpay Wallet only on this device. So no one else but you can unlock your Wallet."
        let subTitle2: String = "PINs are just as secure as long password, But easier to use and remember"
        // Initial setup
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIHostingController(
            rootView: PinSetupContentView(
                title    : title,
                subTitle1: subTitle1,
                subTitle2: subTitle2
            )
        )
        window?.makeKeyAndVisible()
        return true
    }
}
