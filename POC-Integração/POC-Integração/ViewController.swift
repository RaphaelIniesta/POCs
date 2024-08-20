//
//  ViewController.swift
//  POC-Integração
//
//  Created by Raphael Iniesta Reis on 09/08/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
//        setButton()
        setupBridge()
    }
    
    func setupBridge() {
        let hostingController = UIHostingController(rootView: SwiftUIView(onButtonTap: OnTap))
        
        hostingController.view.frame = view.bounds
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }
    
    let customButton = BetterUXButton(frame: CGRect(x: 100, y: 200, width: 180, height: 60))
    
    func setButton() {
        view.addSubview(customButton)
        customButton.setTitle("Button", for: .normal)
    }
    
    @objc func OnTap() {
        let vc = UIHostingController(rootView: DetailView())
        
        navigationController?.pushViewController(vc, animated: true)
        print("Fununcia")
    }
    
}

#Preview {
    return ViewController()
}
