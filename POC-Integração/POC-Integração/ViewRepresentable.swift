//
//  ViewRepresentable.swift
//  POC-Integração
//
//  Created by Raphael Iniesta Reis on 09/08/24.
//

import Foundation
import UIKit
import SwiftUI

struct UIButtonToSwiftUI: UIViewRepresentable {
    typealias UIViewType = BetterUXButton
    var onTap: (() -> Void)
    
    func makeUIView(context: Context) -> BetterUXButton {
        let button = BetterUXButton()
        button.setTitle("Button", for: .normal)
        button.addTarget(context.coordinator, action: #selector(Coordinator.handlerTap), for: .touchUpInside)
        return button
    }
    
    func updateUIView(_ uiView: BetterUXButton, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(onTap: onTap)
    }
    
    class Coordinator {
        @objc let onTap: (() -> Void)
        
        init(onTap: @escaping () -> Void) {
            self.onTap = onTap
        }
        
        @objc func handlerTap() {
            onTap()
        }
    }
    
}
