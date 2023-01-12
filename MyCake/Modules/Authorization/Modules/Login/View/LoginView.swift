//
//  LoginView.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit
import SwiftUI
import SnapKit

final class LoginView: UIView {
    
    private enum ViewMetrics {
        
        static let backgroundColor: UIColor = .backgroundColor
    }
    
    lazy private var loginTextField: LoginTextFieldView = {
        let textFiled = LoginTextFieldView()
        textFiled.textField.placeholder = R.string.localizable.loginUsername()
        return textFiled
    }()
    
    lazy private var passwordTextField: PasswordTextFieldView = {
        let textFiled = PasswordTextFieldView()
        textFiled.textField.placeholder = R.string.localizable.loginPassword()
        return textFiled
    }()
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = ViewMetrics.backgroundColor
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func  setupLayout() {
        addSubview(loginTextField)
        addSubview(passwordTextField)
        
        loginTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(200)
            make.left.equalToSuperview().inset(50)
        }
        passwordTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(250)
            make.left.equalToSuperview().inset(50)
        }
    }
}

#if DEBUG
struct LoginViewPreviews: PreviewProvider {
    static var previews: some View {
        ContainerView(view: LoginView()).edgesIgnoringSafeArea(.all)
    }
}
#endif
