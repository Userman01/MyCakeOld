//
//  UIColor.swift
//  MyCake
//
//  Created by Петр Постников on 03.08.2022.
//

import UIKit

extension UIColor {
    
    static func dynamic(light: UIColor!, dark: UIColor!) -> UIColor {
        return UIColor { traitCollection in
            traitCollection.userInterfaceStyle == .dark ? dark : light
        }
    }
    
    static let backgroundColor = dynamic(light: R.color.backgroundLight(), dark: R.color.backgroundDark())
}
