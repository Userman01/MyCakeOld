//
//  SceneDelegate.swift
//  MyCake
//
//  Created by Петр Постников on 16.06.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    lazy private var applicationCoordinator: ApplicationCoordinator = {
        let rootViewController = UINavigationController()
        let router = Router(rootController: rootViewController)
        let coordinatorFactory = CoordinatorFactory()
        let coordinator = coordinatorFactory.makeApplicationCoordinator(router: router)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        return coordinator
    }()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        applicationCoordinator.start()
    }
}
