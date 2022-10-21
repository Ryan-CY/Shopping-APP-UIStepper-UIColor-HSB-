//
//  ViewController.swift
//  Shopping APP(UIStepper)
//
//  Created by Ryan Lin on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLabelImageView: UIImageView!
    
    @IBOutlet weak var totalQtyLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    //所有 Stepper 的 outlet collection
    @IBOutlet var changeSizeSteppers: [UIStepper]!
  
    @IBOutlet weak var lemongrassGingerStepper: UIStepper!
    @IBOutlet weak var midnightGiandujaStepper: UIStepper!
    @IBOutlet weak var strawberryBasilStepper: UIStepper!
    @IBOutlet weak var pistachioStepper: UIStepper!
    @IBOutlet weak var vanillaFigStepper: UIStepper!
    @IBOutlet weak var seaSaltHojichaStepper: UIStepper!
    @IBOutlet weak var darkChocolateSorbetStepper: UIStepper!
    @IBOutlet weak var roastedSesameStepper: UIStepper!
 
    @IBOutlet weak var lemongrassGingerQty: UITextField!
    @IBOutlet weak var midnightGiandujaQrty: UITextField!
    @IBOutlet weak var strawberryBasilQty: UITextField!
    @IBOutlet weak var pistachioQty: UITextField!
    @IBOutlet weak var vanillaFigQty: UITextField!
    @IBOutlet weak var seaSaltHojichaQty: UITextField!
    @IBOutlet weak var darkChocolateSorbetQty: UITextField!
    @IBOutlet weak var roastedSesameQty: UITextField!
    //所有 Qty Text Field 的 outlet collection
    @IBOutlet var qtyTextFields: [UITextField]!
    
    var totalQty = 0
    var totalPrice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabelImageView.layer.borderColor = UIColor(hue: 196/360, saturation: 0.5, brightness: 0.8, alpha: 1).cgColor
        //改變所有Stepper的大小
        for i in 0...7{
            changeSizeSteppers[i].transform = CGAffineTransform(scaleX: 0.7, y: 0.8)
        }
    }
    func reaction() {
       //各個Label顯示對應stepper的值
        lemongrassGingerQty.text = String(Int(lemongrassGingerStepper.value))
        midnightGiandujaQrty.text = String(Int(midnightGiandujaStepper.value))
        strawberryBasilQty.text = String(Int(strawberryBasilStepper.value))
        pistachioQty.text = String(Int(pistachioStepper.value))
        vanillaFigQty.text = String(Int(vanillaFigStepper.value))
        seaSaltHojichaQty.text = String(Int(seaSaltHojichaStepper.value))
        darkChocolateSorbetQty.text = String(Int(darkChocolateSorbetStepper.value))
        roastedSesameQty.text = String(Int(roastedSesameStepper.value))
      //總數量等於所有Stepper的值相加
        totalQty = Int(lemongrassGingerStepper.value) + Int(midnightGiandujaStepper.value) + Int(strawberryBasilStepper.value) + Int(pistachioStepper.value) + Int(vanillaFigStepper.value) + Int(seaSaltHojichaStepper.value) + Int(darkChocolateSorbetStepper.value) + Int(roastedSesameStepper.value)
      //總價等於各個數量乘以單價的整數和
        totalPrice =  Int(lemongrassGingerStepper.value)*17+Int(midnightGiandujaStepper.value)*20+Int(strawberryBasilStepper.value)*18+Int(pistachioStepper.value)*20+Int(vanillaFigStepper.value)*20+Int(seaSaltHojichaStepper.value)*17+Int(darkChocolateSorbetStepper.value)*17+Int(roastedSesameStepper.value)*18
        
        totalQtyLabel.text = "Total Qty: \(totalQty)"
        totalPriceLabel.text = "Total Price: $ \(totalPrice)"
        //讓Qty Text Field不顯示0，而顯示Qty會更自然
        for i in 0...7 {
            if qtyTextFields[i].text == "0" {
                qtyTextFields[i].text = "Qty"
            }
        }
    }
    
    @IBAction func changeValueStepper(_ sender: UIStepper) {
        reaction()
    }
    
    @IBAction func clearButton(_ sender: Any) {
        //所有stepper的值歸零
        lemongrassGingerStepper.value = 0
        midnightGiandujaStepper.value = 0
        strawberryBasilStepper.value = 0
        pistachioStepper.value = 0
        vanillaFigStepper.value = 0
        seaSaltHojichaStepper.value = 0
        darkChocolateSorbetStepper.value = 0
        roastedSesameStepper.value = 0
        
        reaction()
    }
}
