//
//  DinamicTable.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 08/08/24.
//

import SwiftUI

struct DinamicTable: View {
    
    @State var headers: [String] = ["Header 1", "Header 2"]
    @State var content: [String] = ["Conteúdo 1", "Conteúdo 2"]
    
    @State var variantes: [String] = []
    @State var placeholder: String = ""
    
    @State var lineCount: Int = 0
    @State var headerCount: Int = 2
    
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            HStack {
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        
                        
                        ForEach(headers.indices, id: \.self) { index in
                            
                            VStack {
                                if(headerCount > 1) {
                                    Button {
                                        headerCount -= 1
                                        headers.remove(at: index)
                                    } label: {
                                        RoundedRectangle(cornerRadius: 5)
                                            .padding(.horizontal)
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 50)
                                            .foregroundStyle(.blue)
                                            .opacity(0.3)
                                            .overlay {
                                                Image(systemName: "minus.circle")
                                                    .resizable()
                                                    .frame(maxWidth: 30, maxHeight: 30)
                                                    .scaledToFit()
                                            }
                                    }
                                    .padding(.top)
                                }
                                
                                RoundedRectangle(cornerRadius: 2)
                                    .foregroundStyle(.gray)
                                    .opacity(0.8)
                                    .overlay {
                                        TextField("\(headers[index])", text: $placeholder)
                                            .padding(.horizontal, 20)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .frame(maxWidth: .infinity)
                                            .foregroundStyle(.white)
                                    }
                                    .frame(width: 250, height: 45)
                            }
                        }
                    }
                    
                    ForEach(variantes.indices, id: \.self) { variante in
                        HStack(spacing: 0) {
                            
                            HStack {
                                
                                if(lineCount >= 1){
                                    Button {
                                        lineCount -= 1
                                        variantes.remove(at: variante)
                                    } label: {
                                        RoundedRectangle(cornerRadius: 5)
                                            .padding(.horizontal)
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 50)
                                            .foregroundStyle(.blue)
                                            .opacity(0.3)
                                            .overlay {
                                                Image(systemName: "minus.circle")
                                                    .resizable()
                                                    .frame(maxWidth: 30, maxHeight: 30)
                                                    .scaledToFit()
                                            }
                                    }
                                    .padding(.top)
                                }
                                
                                RoundedRectangle(cornerRadius: 2)
                                    .foregroundStyle(.blue)
                                    .opacity((variante % 2 == 0) ? 0.8 : 0.45)
                                    .overlay {
                                        Text(variantes[variante])
                                            .padding(.horizontal)
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .frame(maxWidth: .infinity)
                                            .foregroundStyle(.white)
                                    }
                                    .frame(width: 250, height: 45)
                                    .padding(.vertical, 2)
                            }
                            
                            ForEach(2...headerCount, id: \.self) { tecido in
                                
                                RoundedRectangle(cornerRadius: 2)
                                    .foregroundStyle(.green)
                                    .opacity((variante % 2 == 0) ? 0.8 : 0.45)
                                    .overlay {
                                        TextField("", text: $placeholder)
                                            .font(.title)
                                            .frame(height: 20)
                                            .padding(.horizontal)
                                            .padding(.vertical, 7)
                                            .frame(maxWidth: .infinity)
                                    }
                                    .frame(width: 250, height: 45)
                            }
                        }
                    }
                    
                    
                    Button {
                        lineCount += 1
                        variantes.append("Variante \(lineCount)")
                    } label: {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .foregroundStyle(.blue)
                            .opacity(0.3)
                            .overlay {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .frame(maxWidth: 30, maxHeight: 30)
                                    .scaledToFit()
                            }
                    }
                    .padding(.top)
                }
                
                Button {
                    headerCount += 1
                    headers.append("Header \(headerCount)")
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(maxHeight: .infinity)
                        .frame(width: 50)
                        .foregroundStyle(.blue)
                        .opacity(0.3)
                        .overlay {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(maxWidth: 30, maxHeight: 30)
                                .scaledToFit()
                        }
                }
                .padding(.leading)
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    DinamicTable()
}
