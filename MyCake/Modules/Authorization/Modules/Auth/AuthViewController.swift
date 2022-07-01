//
//  AuthViewController.swift
//  MyCake
//
//  Created by Петр Постников on 28.06.2022.
//

import Foundation
import UIKit

protocol AuthDisplayLogic: AnyObject {
    
    func displayFields(viewModel: Auth.GetFields.ViewModel)
}

class AuthViewController: UIViewController, AuthDisplayLogic {
    
    let interactor: AuthBusinessLogic
    let mode: AuthMode
    
    init(interactor: AuthBusinessLogic, mode: AuthMode) {
        self.interactor = interactor
        self.mode = mode
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getFields()
    }
    
    private func getFields() {
        interactor.getFields(request: Auth.GetFields.Request())
    }
    
    func displayFields(viewModel: Auth.GetFields.ViewModel) {
        
    }
}
