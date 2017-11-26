//
//  ViewController.swift
//  CrazyShopping
//
//  Created by Aliu on 2017/11/25.
//  Copyright © 2017年 Aliu.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Value1 = 0
    var Value2 = 0
    var Value3 = 0
    var Value4 = 0

    @IBAction func S1Click(_ sender: UIStepper) {
        Value1 = Int(sender.value)
        Coat1Label.text = String(Value1)
        totalprice()
    }
    
    @IBAction func S2Click(_ sender: UIStepper) {
        Value2 = Int(sender.value)
        Coat2Label.text = String(Value2)
        totalprice()
    }
    
    @IBAction func S3Click(_ sender: UIStepper) {
        Value3 = Int(sender.value)
        Coat3Label.text = String(Value3)
        totalprice()
    }
    
    @IBAction func S4Click(_ sender: UIStepper) {
        Value4 = Int(sender.value)
        Coat4Label.text = String(Value4)
        totalprice()
    }
    
    func totalprice() {
        let total = 7250 * Value1 + 4250 * Value2 + 6000 * Value3 + 8800 * Value4
        Total.text = String(total)
    }
    
    @IBOutlet weak var Stepper4: UIStepper!
    @IBOutlet weak var Stepper3: UIStepper!
    @IBOutlet weak var Stepper2: UIStepper!
    @IBOutlet weak var Stepper1: UIStepper!
    @IBOutlet weak var Coat4Label: UILabel!
    @IBOutlet weak var Coat3Label: UILabel!
    @IBOutlet weak var Coat2Label: UILabel!
    @IBOutlet weak var Coat1Label: UILabel!
    
    @IBOutlet weak var Total: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Stepper1.maximumValue = 5
        Stepper2.maximumValue = 5
        Stepper3.maximumValue = 5
        Stepper4.maximumValue = 5
        Stepper1.minimumValue = 0
        Stepper2.minimumValue = 0
        Stepper3.minimumValue = 0
        Stepper4.minimumValue = 0
        Stepper1.autorepeat = true
        Stepper2.autorepeat = true
        Stepper3.autorepeat = true
        Stepper4.autorepeat = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

