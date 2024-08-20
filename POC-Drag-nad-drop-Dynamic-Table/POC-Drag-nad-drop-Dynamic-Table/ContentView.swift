//
//  ContentView.swift
//  POC-Drag-nad-drop-Dynamic-Table
//
//  Created by Raphael Iniesta Reis on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var payload: String = "Drag me"
    @State var tableAppeared: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Circle()
                    .frame(width: 40)
                    .foregroundStyle(.gray.opacity(0.7))
                    .background(.clear)
                    .overlay {
                        Image(systemName: "tablecells")
                            .imageScale(.large)
                            .foregroundStyle(.white)
                    }
                    .shadow(radius: 4, x: 2, y: 1)
                    .draggable(payload)
                
                VStack {
                    if(tableAppeared) {
                        DinamicTable()
                    } else {
                        RoundedRectangle(cornerRadius: 25.0)
                            .padding()
                            .foregroundStyle(.cyan)
                    }
                }
                .dropDestination(for: String.self) {items,location in
                    
                    tableAppeared = true
                    
                    return true
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
