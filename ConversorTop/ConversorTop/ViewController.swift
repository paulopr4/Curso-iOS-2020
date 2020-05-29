//
//  ViewController.swift
//  ConversorTop
//
//  Created by paulo ricardo on 29/05/20.
//  Copyright © 2020 paulo ricardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var btUnit1: UIButton!
    @IBOutlet weak var btUnit2: UIButton!
    @IBOutlet weak var lbResult: UITextField!
    @IBOutlet weak var lbResultUnit: UIButton!
    @IBOutlet weak var lbUnit: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showNext(_ sender: UIButton) {
        switch lbUnit.text! {
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
            btUnit2.setTitle("Kilometro", for: .normal)
            
        default:
             lbUnit.text = "Temperatura"
             btUnit1.setTitle("Celsius", for: .normal)
             btUnit2.setTitle("Farenheint", for: .normal)
        }
        convert(nil)
        
        
    }
    @IBAction func convert(_ sender: UIButton?) {
        if let sender =  sender {
            if sender == btUnit1  {
                btUnit2.alpha = 0.5
            } else {
                btUnit1.alpha = 0.5
            }
            sender.alpha =  1.0
            
        }
        switch lbUnit.text! {
        case "Temperatura":
            calcTemperature()
        case "Peso":
            calcWeight()
        default:
            calcDistance()
        }
        
    }
    
    func calcTemperature() {
        guard let temperature = Double(tfValue.text!) else {return}
        if btUnit1.alpha == 1.0 {
            lbResultUnit.text = "Farenheint"
            lbResult.text = String(temperature * 1.8 + 32.0)
           
           
        }
        
        
    }
    func calcWeight() {
        
    }
    
    func calcCurrency() {
        
    }
    
    func calcDistance() {
        
    }
    

}

