//
//  CustomTable.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 24/07/24.
//

import SwiftUI

struct CustomTable: View {
    let placeholder: [String] = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        List {
            ForEach(placeholder, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    CustomTable()
}
