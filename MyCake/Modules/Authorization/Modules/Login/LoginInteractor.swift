//
//  LoginInteractor.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import Foundation

protocol LoginBusinessLogic {
    
    func getFields(request: Login.GetFields.Request)
}

final class LoginInteractor: LoginBusinessLogic {
    
    let presenter: LoginPresentationLogic
    
    init(presenter: LoginPresentationLogic) {
        self.presenter = presenter
    }
    
    func getFields(request: Login.GetFields.Request) {
        presenter.presentFields(responce: Login.GetFields.Responce())
    }
}
