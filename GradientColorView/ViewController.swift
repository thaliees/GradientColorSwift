//
//  ViewController.swift
//  GradientColorView
//
//  Created by Thaliees on 9/28/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var viewCenter: UIView!
    @IBOutlet weak var viewBottom: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewTop.gradient(colors: [UIColor.orange, UIColor.green], isHorizontal: false, cornerRadious: 2, width: 50)
        viewCenter.gradientDiagonal(colors: [UIColor.black, UIColor.blue, UIColor.white], locationLeft: false, cornerRadious: 5)
        viewBottom.gradientDiagonal(colors: [UIColor.yellow, UIColor.orange, UIColor.magenta], locationLeft: true, cornerRadious: 10, width: 200)
    }
}
