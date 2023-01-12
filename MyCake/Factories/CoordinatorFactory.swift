//
//  CoordinatorFactory.swift
//  MyCake
//
//  Created by Петр Постников on 02.08.2022.
//

import UIKit

protocol CoordinatorFactoryProtocol {
    
    func makeApplicationCoordinator(router: RouterProtocol) -> ApplicationCoordinator
    
    func makeAuthCoordinator(router: RouterProtocol, isLogout: Bool) -> AuthCoordinator
}

final class CoordinatorFactory: CoordinatorFactoryProtocol {
    
    func makeApplicationCoordinator(router: RouterProtocol) -> ApplicationCoordinator {
        return ApplicationCoordinator(router: router, coordinatorFactory: self)
    }
    
    func makeAuthCoordinator(router: RouterProtocol, isLogout: Bool) -> AuthCoordinator {
        return AuthCoordinator(
            coordinatorFactory: self,
            router: router,
            isLogout: isLogout)
    }
}
