//
//  AuthRouter.swift
//  MyCake
//
//  Created by Петр Постников on 08.08.2022.
//

import UIKit

protocol AuthRouterProtocol {
    func openLogin()
}

final class AuthRouter: AuthRouterProtocol {
    
    private let router: RouterProtocol
    
    init(router: RouterProtocol) {
        self.router = router
    }
    
    func openLogin() {
        let loginViewController = LoginBuilder().build()
        router.setRootModules([loginViewController])
    }
}
