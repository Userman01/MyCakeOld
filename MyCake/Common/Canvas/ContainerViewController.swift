//
//  ContainerViewController.swift
//  MyCake
//
//  Created by Петр Постников on 11.07.2022.
//

import UIKit
import SwiftUI

struct ContainerViewController: UIViewControllerRepresentable {
    
    private let viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
