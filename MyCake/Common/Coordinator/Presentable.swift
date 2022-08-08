//
//  Presentable.swift
//  MyCake
//
//  Created by Петр Постников on 31.07.2022.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
    
    func toPresent() -> UIViewController? {
        return self
    }
}

protocol BaseModule: NSObjectProtocol, Presentable {}
