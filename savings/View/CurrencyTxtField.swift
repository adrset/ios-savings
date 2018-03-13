//
//  CurrencyTxtField.swift
//  savings
//
//  Created by Adrian Setniewski on 13.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit

@IBDesignable class CurrencyTxtField: UITextField {
    
    // Do not implement it empty!
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
       
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size * 3, height: size) )
        // currencyLbl.backgroundColor = #colorLiteral(red: 0.31640625, green: 0.31640625, blue: 0.31640625, alpha: 0.6629387842)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
       
        
        if let code = formatter.currencyCode {
            currencyLbl.text = code
        }else {
            currencyLbl.text = "!"
        }
        
        
        
        // Remember to add subview!
        addSubview(currencyLbl)
    }
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
        clipsToBounds = true
        
        if let p = placeholder{ // not nil -> will run
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place;
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
