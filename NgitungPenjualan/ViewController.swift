//
//  ViewController.swift
//  NgitungPenjualan
//
//  Created by Faras Abiyyu Handoko on 22/05/18.
//  Copyright © 2018 Farras Doko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfhasil3: UITextField!
    @IBOutlet weak var tfhasil2: UITextField!
    @IBOutlet weak var tfhasil1: UITextField!
    @IBOutlet weak var tfbarang3: UITextField!
    @IBOutlet weak var tfbarang2: UITextField!
    @IBOutlet weak var tfbarang1: UITextField!
    @IBOutlet weak var lbStepper3: UIStepper!
    @IBOutlet weak var lbStepper2: UIStepper!
    @IBOutlet weak var lbStepper: UIStepper!
    @IBOutlet weak var lblResult: UILabel!
    
    var isChange = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lbStepper.wraps = true
        lbStepper.autorepeat = true
//        lbStepper.maximumValue = 10
        lbStepper.tintColor = UIColor.black
        
        lbStepper2.wraps = true
        lbStepper2.autorepeat = true
//        lbStepper2.maximumValue = 10
        lbStepper2.tintColor = UIColor.black
        
        lbStepper3.wraps = true
        lbStepper3.autorepeat = true
//        lbStepper3.maximumValue = 10
        lbStepper3.tintColor = UIColor.black
    }
    @IBAction func stepperValueChanged3(_ sender: UIStepper) {
        tfhasil3.text = Int(sender.value).description
        
//        isChange = true
        updateResult()
    }
    
    @IBAction func stepperValueChanged2(_ sender: UIStepper) {
        tfhasil2.text = Int(sender.value).description
        
//        isChange = true
        updateResult()
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        tfhasil1.text = Int(sender.value).description
        
//        isChange = true
        updateResult()
    }
    
    func updateResult() {
        
        let res1 = Int(tfhasil1.text!)!
        let res2 = Int(tfhasil2.text!)!
        let res3 = Int(tfhasil3.text!)!
        
        let total = res1 + res2 + res3
        lblResult.text = String(describing: total)
//        isChange = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

