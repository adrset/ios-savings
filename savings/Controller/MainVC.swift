//
//  ViewController.swift
//  savings
//
//  Created by Adrian Setniewski on 13.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var itemTxt: CurrencyTxtField!
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width:view.frame.size.width,height:60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.4138099911, blue: 0.0003113956878, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        itemTxt.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
        print("Accessed!")
    }


}

