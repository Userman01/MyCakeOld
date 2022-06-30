//
//  LoginBuilder.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit

final class LoginBuilder {
    
    func build() -> UIViewController {
        
        let presentor = LoginPresenter()
        let interactor = LoginInteractor(presenter: presentor)
        let viewController = LoginViewController(interactor: interactor)
        
        presentor.viewController = viewController
        return viewController
    }
}
