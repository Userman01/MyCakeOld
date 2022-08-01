//
//  PreviewProviderForCanvas.swift
//  MyCake
//
//  Created by Петр Постников on 11.07.2022.
//

import SwiftUI
import UIKit

final class ContainerView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        return LoginView()
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}
