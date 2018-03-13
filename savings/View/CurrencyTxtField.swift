//
//  CurrencyTxtField.swift
//  savings
//
//  Created by Adrian Setniewski on 13.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit

@IBDesignable class CurrencyTxtField: UITextField {
  // @IBDesignable & prepareForInterfaceBuilder() -> display changes in UI editor
    override func prepareForInterfaceBuilder() {
        customizeView()

    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center // enum
        
        if let p = placeholder{ // not nil -> will run
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place;
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
