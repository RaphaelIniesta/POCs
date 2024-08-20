//
//  CanvasView.swift
//  POC-PencilKit
//
//  Created by Raphael Iniesta Reis on 12/07/24.
//

import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView
    @State var toolPicker = PKToolPicker()
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        showToolPicker()
//        canvasView.tool = PKInkingTool(.pen, color: UIColor(selectedColor), width: 15)
        return canvasView
    }
    
    func updateUIView(_ canvasView: PKCanvasView, context: Context) { }
}

private extension CanvasView {
    func showToolPicker() {
        toolPicker.setVisible(true, forFirstResponder: canvasView)
        toolPicker.addObserver(canvasView)
        canvasView.becomeFirstResponder()
    }
}
