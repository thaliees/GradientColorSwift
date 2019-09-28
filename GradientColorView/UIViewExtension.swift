//
//  UIViewExtension.swift
//  GradientColorView
//
//  Created by Thaliees on 9/28/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit

extension UIView {
    func gradient(colors: [UIColor], isHorizontal: Bool) {
        let layer:CAGradientLayer = CAGradientLayer()
        layer.frame = self.bounds
        layer.colors = colors.map{$0.cgColor}
        
        if isHorizontal {
            layer.startPoint = CGPoint(x: 0, y: 0)
            layer.endPoint = CGPoint(x: 1, y: 1)
        }
        
        self.layer.insertSublayer(layer, at: 0)
    }
}
