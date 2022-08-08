//
//  TextFieldView.swift
//  MyCake
//
//  Created by Петр Постников on 30.06.2022.
//

import UIKit
import SnapKit

protocol TextFieldViewProtocol {
    
    var textFillText: ((String) -> Void)? { get set }
}

class TextFieldView: UIView, TextFieldViewProtocol {
    
    // MARK: View Metrics
    private enum ViewMetrics {
        
    }
    
    var textFillText: ((String) -> Void)?
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.autocorrectionType = .no
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    init(
        keyboardType: UIKeyboardType = .default,
        margins: UIEdgeInsets = .zero
    ) {
        super.init(frame: .zero)
        
        textField.keyboardType = keyboardType
        self.layoutMargins = margins
        
        setupLayout()
        addTapGestureRecognizer()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Private func
    
    private func setupLayout() {
        
        addSubview(textField)
        
        textField.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    private func addTapGestureRecognizer() {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        addGestureRecognizer(recognizer)
    }
    
    @objc private func tapAction() {
        textField.becomeFirstResponder()
    }
}
