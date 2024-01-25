//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Marco Capraro on 1/25/24.
//

import UIKit

extension UIColor {
    
    // Creates a random UIColor
    static func random() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
