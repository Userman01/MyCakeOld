//
//  LoginPresenter.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import Foundation

protocol LoginPresentationLogic {
    func presentFields(responce: Login.GetFields.Responce)
}

final class LoginPresenter: LoginPresentationLogic {
    
    weak var viewController: LoginDisplayLogic?
    
    func presentFields(responce: Login.GetFields.Responce) {
        viewController?.diplayFields()
    }
}
