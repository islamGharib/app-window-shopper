//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Islam Gharib on 1/30/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    
    // drawing currency icon
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7441340057, green: 0.8056901493, blue: 0.8951159357, alpha: 0.7969820205)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        // create currency sympol
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2481538955)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
