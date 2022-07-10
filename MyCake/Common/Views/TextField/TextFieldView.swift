//
//  TextFieldView.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit
import SnapKit

class TextFieldView: UIView {
    
    lazy private var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "search"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        
        addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
