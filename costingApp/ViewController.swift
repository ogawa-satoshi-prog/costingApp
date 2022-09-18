//
//  ViewController.swift
//  costingApp
//
//  Created by 小川慧 on 2022/09/06.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var grams1: UITextField!
    @IBOutlet weak var grams2: UITextField!
    @IBOutlet weak var price1: UITextField!
    @IBOutlet weak var price2: UITextField!
    @IBOutlet weak var costValue1: UILabel!
    @IBOutlet weak var costValue2: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // viewDidLoad write here!!
        
    }
    //計算ボタンが押された時の処理
    @IBAction func btnClick(_ sender: Any) {
        let nGram1:Double = Double(grams1.text ?? "0")!
        let  nGram2:Double = Double(grams2.text ?? "0")!
        let nPrice1:Double = Double(price1.text ?? "0")!
        let nPrice2:Double = Double(price2.text ?? "0")!
        
        //計算
        let result1:Double = nPrice1 / nGram1;
        let strR1 = String(round(result1 * 10) / 10)
        let result2:Double = nPrice2 / nGram2;
        let strR2 = String(round(result2 * 10) / 10)
        
        //表示
        costValue1.text = strR1
        costValue2.text = strR2
    }
    
}

