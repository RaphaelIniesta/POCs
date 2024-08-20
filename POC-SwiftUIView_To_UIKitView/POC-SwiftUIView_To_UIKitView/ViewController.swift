//
//  ViewController.swift
//  POC-SwiftUIView_To_UIKitView
//
//  Created by Raphael Iniesta Reis on 19/08/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton()
        
        button.setTitle("Testar Navigation", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 12
        button.configuration = .filled()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setButton()
    }

    func setButton() {
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
    
    @objc func navigate() {
        let vc = UIHostingController(rootView: SwiftUIView())
        
//        var controller = OutraViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
        print("Funciona")
    }

}

