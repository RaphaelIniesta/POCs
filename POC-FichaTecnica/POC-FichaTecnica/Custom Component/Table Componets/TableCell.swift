//
//  TableCell.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 24/07/24.
//

import SwiftUI

struct TableCell: View {
    
    var body: some View {
        
        
        RoundedRectangle(cornerRadius: 5)
            .frame(height: 100)
            .padding(.horizontal)
            .frame(height: 40)
            .foregroundStyle(.white)
            .overlay {
                Text("Placeholder")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .border(Color.black)
            }
            .border(Color.black)
    }
}

#Preview {
    TableCell()
}
