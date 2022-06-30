//
//  LoginViewController.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit

protocol LoginDisplayLogic {
    
}

final class LoginViewController: UIViewController {
    
    let interactor: LoginBusinessLogic
    
    init(interactor: LoginBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginViewController: LoginDisplayLogic {
    
}
