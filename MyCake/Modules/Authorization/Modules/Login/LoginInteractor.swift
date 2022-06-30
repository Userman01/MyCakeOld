//
//  LoginInteractor.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import Foundation

protocol LoginBusinessLogic {
    
}

final class LoginInteractor: LoginBusinessLogic {
    
    let presenter: LoginPresentationLogic
    
    init(presenter: LoginPresentationLogic) {
        self.presenter = presenter
    }
}
