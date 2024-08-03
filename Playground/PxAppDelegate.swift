//
//  PxAppDelegate.swift
//  Playground
//
//  Created by Kabir Asani on 02/08/24.
//

import UIKit

@main
class PxAppDelegate: UIResponder, UIApplicationDelegate {
    func application(
		_ application: UIApplication, 
		didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
	) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(
		_ application: UIApplication, 
		configurationForConnecting connectingSceneSession: UISceneSession, 
		options: UIScene.ConnectionOptions
	) -> UISceneConfiguration {
        return UISceneConfiguration(
			name: "Default Configuration",
			sessionRole: connectingSceneSession.role
		)
    }

    func application(
		_ application: UIApplication, 
		didDiscardSceneSessions sceneSessions: Set<UISceneSession>
	) {
    }
}

