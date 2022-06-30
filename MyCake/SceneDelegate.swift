//
//  SceneDelegate.swift
//  MyCake
//
//  Created by Петр Постников on 16.06.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let login = LoginBuilder().build()
        let rootViewController = UINavigationController(rootViewController: login)
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}
