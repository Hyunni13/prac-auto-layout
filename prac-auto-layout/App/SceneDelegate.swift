//
//  SceneDelegate.swift
//  prac-auto-layout
//
//  Created by James on 10/11/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        Logger.log()
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        let splashViewController = SplashViewController()
        
        window.rootViewController = splashViewController
        window.makeKeyAndVisible()
        self.window = window
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        Logger.log()
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        Logger.log()
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        Logger.log()
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        Logger.log()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        Logger.log()
    }
    
}
