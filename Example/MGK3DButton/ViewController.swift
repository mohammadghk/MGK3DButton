//
//  ViewController.swift
//  MGK3DButton
//
//  Created by mohammadghk@gmail.com on 08/15/2017.
//  Copyright (c) 2017 mohammadghk@gmail.com. All rights reserved.
//
import UIKit
import Foundation
import MGK3DButton

class ViewController: UIViewController {

    @IBOutlet weak var sample1Button: MGK3DButton!
    
    @IBOutlet weak var sample3Button: MGK3DButton!
    
    @IBOutlet weak var sample4Button: MGK3DButton!
    
    @IBOutlet weak var sample5Button: MGK3DButton!
    @IBOutlet weak var sample6Button: MGK3DButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        sample1Button.color = .green
        sample3Button.color = .beige
        sample4Button.color = .navyBlue
        sample5Button.color = .orange
//        sample6Button.initWith(color: UIColor.blue , shadow: UIColor.darkGray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

