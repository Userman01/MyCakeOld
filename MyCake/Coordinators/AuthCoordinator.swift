//
//  AuthCoordinator.swift
//  MyCake
//
//  Created by Петр Постников on 03.08.2022.
//

import UIKit

final class AuthCoordinator: BaseCoordinator {
    
    var finishFlow: (() -> Void)?
    
    private let coordinatorFactory: CoordinatorFactoryProtocol
    private let authRouter: AuthRouterProtocol
    private let router: RouterProtocol
    private let isLogout: Bool

    init(
        coordinatorFactory: CoordinatorFactoryProtocol,
        router: RouterProtocol,
        isLogout: Bool
    ) {
        self.coordinatorFactory = coordinatorFactory
        self.authRouter = AuthRouter(router: router)
        self.router = router
        self.isLogout = isLogout
    }
    
    override func start() {
        openLogin()
    }
    
    private func openLogin() {
        authRouter.openLogin()
    }
}
