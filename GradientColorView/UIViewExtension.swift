//
//  UIViewExtension.swift
//  GradientColorView
//
//  Created by Thaliees on 9/28/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit

extension UIView {
    func gradient(colors: [UIColor], isHorizontal: Bool, cornerRadious: CGFloat, width:CGFloat = 0) {
        self.layer.sublayers?.removeAll()
        let layer:CAGradientLayer = CAGradientLayer()
        layer.frame = self.bounds
        if width != 0 { layer.frame.size.width = width }
        layer.colors = colors.map{$0.cgColor}
        layer.cornerRadius = cornerRadious
        
        if !isHorizontal {
            layer.startPoint = CGPoint(x: 0, y: 0)
            layer.endPoint = CGPoint(x: 1, y: 0)
        }
        
        self.layer.addSublayer(layer)
        self.layer.cornerRadius = cornerRadious
    }
    
    func gradientDiagonal(colors: [UIColor], locationLeft: Bool, cornerRadious: CGFloat, width: CGFloat = 0) {
        self.layer.sublayers?.removeAll()
        let layer:CAGradientLayer = CAGradientLayer()
        layer.frame = self.bounds
        if width != 0 { layer.frame.size.width = width }
        layer.colors = colors.map{$0.cgColor}
        layer.cornerRadius = cornerRadious
        
        if locationLeft {
            layer.startPoint = CGPoint(x: 1, y: 0)
            layer.endPoint = CGPoint(x: 0, y: 1)
        }
        else {
            layer.startPoint = CGPoint(x: 0, y: 0)
            layer.endPoint = CGPoint(x: 1, y: 1)
        }
        
        self.layer.addSublayer(layer)
        self.layer.cornerRadius = cornerRadious
    }
}
