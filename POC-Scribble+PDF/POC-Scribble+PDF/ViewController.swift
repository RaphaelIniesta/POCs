//
//  ViewController.swift
//  POC-Scribble+PDF
//
//  Created by Raphael Iniesta Reis on 15/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    let textField: UITextField = {
        let textField = UITextField()
        
        textField.backgroundColor = .white
        textField.placeholder = "Escreva aqui"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setElements()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UIScribbleInteraction.isPencilInputExpected {
            let lineHeight = textField.font?.lineHeight ?? 17.0
            let heightForScribble = lineHeight * 4.0
//            heightConstraint.constant = heightForScribble
        }
    }

    func setElements() {
        setTextField()
    }
    
    func setTextField() {
        self.view.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 16),
            textField.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
}

#Preview {
    return ViewController()
}
