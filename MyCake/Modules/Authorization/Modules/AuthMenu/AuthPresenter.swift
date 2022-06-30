//
//  AuthPresenter.swift
//  MyCake
//
//  Created by Петр Постников on 28.06.2022.
//

import UIKit

protocol AuthPresentationLogic {
    
    func presentFields(responce: Auth.GetFields.Response)
}

final class AuthPresenter: AuthPresentationLogic {
    
    weak var viewController: AuthDisplayLogic?
    
    func presentFields(responce: Auth.GetFields.Response) {
        
    }
}
