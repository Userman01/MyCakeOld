//
//  LoginTextFieldView.swift
//  MyCake
//
//  Created by Петр Постников on 08.08.2022.
//

import UIKit

final class LoginTextFieldView: TextFieldView {
    
    init() {
        super.init()
        textField.textContentType = .username
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
