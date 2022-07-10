//
//  LoginView.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit
import SnapKit

final class LoginView: UIView {
    
    lazy private var textField: TextFieldView = {
        let textFiled = TextFieldView()
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func  setupLayout() {
        addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(250)
            make.left.equalToSuperview().inset(50)
        }
    }
}
