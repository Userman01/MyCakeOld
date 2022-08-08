//
//  ApplicationCoordinator.swift
//  MyCake
//
//  Created by Петр Постников on 01.08.2022.
//

import UIKit

final class ApplicationCoordinator: BaseCoordinator {
    
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private var router: RouterProtocol
    private var isAuthorized = false
    private var isLogout = false
    private var tabBarCoordinator: TabBarCoordinator?
    
    init(router: RouterProtocol, coordinatorFactory: CoordinatorFactoryProtocol) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start(with option: DeepLinkOption?) {
        if isAuthorized {
            runMainFlow(with: option)
        } else {
            runAuthFlow(isLogout: isLogout, with: option)
        }
    }
    
    private func runMainFlow(with option: DeepLinkOption? = nil) {
        
    }
    
    private func runAuthFlow(isLogout: Bool, with option: DeepLinkOption? = nil) {
        let coordinator = coordinatorFactory.makeAuthCoordinator(router: router, isLogout: isLogout)
        coordinator.finishFlow = { [weak self] in
            
        }
        coordinator.start()
    }
}
