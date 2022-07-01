//
//  LoginViewController.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit

protocol LoginDisplayLogic: AnyObject {
    func diplayFields()
}

final class LoginViewController: UIViewController {
    
    let interactor: LoginBusinessLogic
    lazy var customView = self.view as? LoginView
    
    init(interactor: LoginBusinessLogic) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = LoginView()
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFields()
    }
    
    func getFields() {
        interactor.getFields(request: Login.GetFields.Request())
    }
}

extension LoginViewController: LoginDisplayLogic {
    
    func diplayFields() {
    }
}
