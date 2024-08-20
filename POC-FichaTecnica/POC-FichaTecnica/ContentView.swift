//
//  ContentView.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 16/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var gen: String = ""
    @State var grade: String = ""
    @State var qtd: String = ""
    @State var ref: String = ""
    
    @State var visualize: Bool = false
    
    var body: some View {
        NavigationStack {
            HStack {
                    Informacoes_Tecnico()
            }
            .padding()
//            .toolbar {
//                ToolbarItem {
//                    ShareLink("Export PDF", item: render())
//                }
//                
//                ToolbarItem {
//                    Button {
//                        visualize.toggle()
//                    } label: {
//                        Image(systemName: "magnifyingglass.circle")
//                    }
//                }
//            }
        }
    }
}

#Preview {
    ContentView()
}
