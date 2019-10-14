//
//  ViewController.swift
//  UnitConverter
//
//  Created by leandro de araujo estrada on 12/10/19.
//  Copyright © 2019 leandro de araujo estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var btUnit1: UIButton!
    @IBOutlet weak var btUnit2: UIButton!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbResultUnit: UILabel!
    @IBOutlet weak var lbUnit: UILabel!
    
    
    @IBAction func showNext(_ sender: UIButton) {
        switch  lbUnit.text! {
        case "Temperatura":
            lbUnit.text = "Peso"
            btUnit1.setTitle("Kilograma", for: .normal)
            btUnit2.setTitle("Libra", for: .normal)
        case "Peso":
            lbUnit.text = "Moeda"
            btUnit1.setTitle("Real", for: .normal)
            btUnit2.setTitle("Dólar", for: .normal)
        case "Moeda":
            lbUnit.text = "Distância"
            btUnit1.setTitle("Metro", for: .normal)
            btUnit2.setTitle("Kilômetro", for: .normal)
        default:
            lbUnit.text = "Temperatura"
            btUnit1.setTitle("Celsius", for: .normal)
            btUnit2.setTitle("Fahrenheit", for: .normal)
        }
        convert(nil)
    }
    
    
    @IBAction func convert(_ sender: UIButton?) {
        if let sender = sender{
            if sender == btUnit1{
                btUnit2.alpha = 0.5
            }else{
                btUnit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        switch  lbUnit.text!{
        case "Temperatura":
            calcTemperature()
        case "Peso":
            calcWeight()
        case "Moeda":
            calcCurrency()
        default:
            calcDistance()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

