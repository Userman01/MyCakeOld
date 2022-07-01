//
//  AuthDataFlow.swift
//  MyCake
//
//  Created by Петр Постников on 28.06.2022.
//

import Foundation

enum Auth {
    
    enum GetFields {
        
        struct Request {
        }
        
        struct Response {
            let mode: AuthMode
            //let result: RequestResult<Any>
        }
        
        struct ViewModel {
            
        }
    }
}
