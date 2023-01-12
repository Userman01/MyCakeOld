//
//  LoginDataFlow.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import Foundation

enum Login {
    
    enum GetFields {
        struct Request {
        }
        
        struct Responce {
            // let result: RequestResult<LoginModel>
        }
        
        struct ViewModel {
            // let state: ViewControllerState
        }
    }
    
    enum ViewControllerState {
        case result(LoginViewModel)
        case error(String)
    }
}
