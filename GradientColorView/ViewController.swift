//
//  ViewController.swift
//  GradientColorView
//
//  Created by Thaliees on 9/28/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view1.gradient(colors: [UIColor.black, UIColor.blue, UIColor.white], isHorizontal: true)
        button1.gradient(colors: [UIColor.orange, UIColor.green], isHorizontal: false)
    }


}

