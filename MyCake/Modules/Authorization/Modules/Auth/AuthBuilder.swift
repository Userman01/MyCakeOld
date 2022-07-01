//
//  AuthBuilder.swift
//  MyCake
//
//  Created by Петр Постников on 28.06.2022.
//

import Foundation
import UIKit

final class AuthBuilder {
    
    var mode: AuthMode?
    
    func set(mode: AuthMode) -> AuthBuilder {
        self.mode = mode
        return self
    }
    
    func build() -> UIViewController {
        guard let mode = mode else { fatalError("You chould set mode") }
        let presenter = AuthPresenter()
        let interactor = AuthInteractor(presentor: presenter, mode: mode)
        let viewController = AuthViewController(interactor: interactor, mode: mode)
        
        presenter.viewController = viewController
        return viewController
    }
}
