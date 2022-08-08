//
//  PreviewProviderForCanvas.swift
//  MyCake
//
//  Created by Петр Постников on 11.07.2022.
//

import UIKit
import SwiftUI

struct ContainerView: UIViewRepresentable {
    
    private let view: UIView
    
    init(view: UIView) {
        self.view = view
    }
    
    func makeUIView(context: Context) -> UIView {
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
