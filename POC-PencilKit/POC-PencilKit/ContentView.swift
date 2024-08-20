//
//  ContentView.swift
//  POC-PencilKit
//
//  Created by Raphael Iniesta Reis on 12/07/24.
//

import SwiftUI
import PencilKit

struct ContentView: View {
    @Environment(\.undoManager) private var undoManager
    @State private var canvas = PKCanvasView()
    @State var color = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
//    @State var tool: PKTool.
    
    var body: some View {
        NavigationStack {
            VStack {
                CanvasView(canvasView: $canvas)
            }
            .toolbar {
                ToolbarItem {
                    Button("Clear") {
                        canvas.drawing = PKDrawing()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
