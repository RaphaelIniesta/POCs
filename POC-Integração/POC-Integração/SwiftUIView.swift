//
//  SwiftUIView.swift
//  POC-Integração
//
//  Created by Raphael Iniesta Reis on 09/08/24.
//

import SwiftUI

struct SwiftUIView: View {
    let onButtonTap: (() -> Void)
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            UIButtonToSwiftUI(onTap: onButtonTap)
                .frame(width: 300, height: 100)
        }
    }
}
