//
//  BillAmountTextField.swift
//  TipAndSplit
//
//  Created by Oscar on 8/31/18.
//  Copyright © 2018 oscartu. All rights reserved.
//

import Foundation

import UIKit

class BillAmountTextField : UITextField {
    
    // MARK: - Properties
    
    var buttonTapAction: (() -> Void)?
    
    // MARK: - View Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let calculateButton = UIBarButtonItem(title: "Calculate Tip", style: .done, target: self, action: #selector(doneButtonTapped(_:)))
        toolbar.items = [leadingFlex, calculateButton, trailingFlex]
        
        // resizes toolbar
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    @objc private func doneButtonTapped(_ sender: UIBarButtonItem) {
        buttonTapAction?()
    }
}
