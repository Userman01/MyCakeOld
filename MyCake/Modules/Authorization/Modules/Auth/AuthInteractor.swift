//
//  AuthInteractor.swift
//  MyCake
//
//  Created by Петр Постников on 28.06.2022.
//

import Foundation

protocol AuthBusinessLogic {
    
    func getFields(request: Auth.GetFields.Request)
}

final class AuthInteractor: AuthBusinessLogic {
    
    let presentor: AuthPresentationLogic
    let mode: AuthMode
    
    init(presentor: AuthPresentationLogic, mode: AuthMode) {
        self.presentor = presentor
        self.mode = mode
    }
    
    func getFields(request: Auth.GetFields.Request) {
        presentor.presentFields(responce: Auth.GetFields.Response(mode: .registrationByEmail))
    }
    
}
