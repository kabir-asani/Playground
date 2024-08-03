//
//  PxSceneDelegate.swift
//  Playground
//
//  Created by Kabir Asani on 02/08/24.
//

import UIKit

class PxSceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = (scene as? UIWindowScene) else { return }
		let window = UIWindow(windowScene: windowScene)
		window.rootViewController = PxViewController()
		self.window = window
		window.makeKeyAndVisible()
	}
	
	func sceneDidDisconnect(_ scene: UIScene) { }
	
	func sceneDidBecomeActive(_ scene: UIScene) { }
	
	func sceneWillResignActive(_ scene: UIScene) { }
	
	func sceneWillEnterForeground(_ scene: UIScene) { }
	
	func sceneDidEnterBackground(_ scene: UIScene) { }
}

