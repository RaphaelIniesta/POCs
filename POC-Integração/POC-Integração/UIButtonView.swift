//
//  UIButtonView.swift
//  POC-Integração
//
//  Created by Raphael Iniesta Reis on 12/08/24.
//

import Foundation
import UIKit

class BetterUXButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtonProperties()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButtonProperties()
    }
    
    func setupButtonProperties() {
        backgroundColor = .blue
        layer.cornerRadius = 30.0
        setTitleColor(.white, for: .normal)
    }
    
}
