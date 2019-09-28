//
//  GradientView.swift
//  GradientColorView
//
//  Created by Thaliees on 9/28/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit

@IBDesignable
class GradienteView: UIView {
    @IBInspectable var firstColor: UIColor = UIColor.clear{
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear{
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var thirdColor: UIColor = UIColor.clear{
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var isHorizontal:Bool = false {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass{
        get{
            return CAGradientLayer.self
        }
    }
    
    func updateView(){
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor, secondColor, thirdColor].map{$0.cgColor}
        
        if self.isHorizontal {
            layer.startPoint = CGPoint(x: 0, y: 0)
            layer.endPoint = CGPoint(x: 1, y: 1)
        }
    }
}
