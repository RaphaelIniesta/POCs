//
//  ContentView.swift
//  POC-Share
//
//  Created by Raphael Iniesta Reis on 24/06/24.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var imageItem: PhotosPickerItem?
    @State private var imageLoaded: Image?
    @State private var haveImage: Bool = false
    private var sharePhoto: Image?
    
    var body: some View {
        NavigationStack {
            VStack {
                PhotosPicker(selection: $imageItem) {
                                    if let imageLoaded {
                                        imageLoaded
                                            .resizable()
                                            .scaledToFit()
                                    } else {
                                        ContentUnavailableView("No picture", systemImage: "photo.badge.plus", description: Text("Tap to import a photo"))
                                    }
                                }
                                .buttonStyle(.plain)
                
                imageLoaded?
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
            .onChange(of: imageItem) {
                Task {
                    if let loaded = try? await imageItem?.loadTransferable(type: Image.self) {
                        imageLoaded = loaded
                    } else {
                        print("Faild to load Image")
                    }
                }
                haveImage = true
            }
            .toolbar {
                ToolbarItem {
                    if let imageLoaded {
                        ShareLink(item: imageLoaded, preview: SharePreview("Imagem", image: imageLoaded))
//                        ShareLink(items: imageLoaded, label: {
//                            Label("Compartilhar", systemImage: "square.and.arrow.up")
//                        })
                    }
                }
            }
        }
    }
}


//#Preview {
//    ContentView()
//}
