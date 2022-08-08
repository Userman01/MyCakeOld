//
//  PasswordTextFieldView.swift
//  MyCake
//
//  Created by Петр Постников on 08.08.2022.
//

import UIKit

final class PasswordTextFieldView: TextFieldView {
    
    init() {
        super.init()
        textField.isSecureTextEntry = true
        textField.textContentType = .password
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
