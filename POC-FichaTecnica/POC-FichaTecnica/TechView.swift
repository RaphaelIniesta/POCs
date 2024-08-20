//
//  TechView.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 22/07/24.
//

import SwiftUI

struct TechView: View {
    
    var header: String
    var Content: String
    
    var body: some View {
        GeometryReader { screen in
            VStack(spacing: 5) {
                Text("\(header)")
                    .foregroundStyle(.gray)
                    .frame(maxWidth: screen.size.width/2, alignment: .leading)
                    .padding(.leading)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(maxWidth: screen.size.width/2)
                    .frame(height: screen.size.height * 0.02)
                    .padding(.trailing)
                    .foregroundStyle(.white)
                    .overlay {
                        Text("\(Content)")
                            .textFieldStyle(.roundedBorder)
                            .frame(maxWidth: screen.size.width/2, alignment: .leading)
                            .padding(.leading)
                    }
            }
            
        }
    }
}

#Preview {
    TechView(header: "Grade", Content: "Placeholder")
}
