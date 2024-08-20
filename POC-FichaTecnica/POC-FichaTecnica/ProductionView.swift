//
//  ProductionView.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 24/07/24.
//

import SwiftUI

struct ProductionView: View {
    
    let setores: [String] = ["PCP", "CORTE", "COSTURA", "ACABAMENTOS", "CONFERÊNCIA", "REVISÃO", "EMBALAGEM", "EXPEDIÇÃO"]
    @State var tecidos: Int = 1
    @State var placeholder: String = ""
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 0) {
                
                Text("ROTA PRODUTIVA")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                HStack(spacing: 0) {
                    
                    Text("SETOR")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                    
                    Text("PRODUÇÃO")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                    
                    Text("PREÇO")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                    
                }
                
                HStack(spacing: 0) {
                    VStack(spacing: 0) {
                        ForEach(setores, id: \.self) { setor in
                            Text(setor)
                                .frame(maxWidth: .infinity)
                                .font(.title)
                                .fontWeight(.semibold)
                                .border(Color.black)
                        }
                    }
                    
                    VStack(spacing: 0) {
                        ForEach(0..<setores.count, id: \.self) { _ in
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.vertical, 7)
                                .frame(maxWidth: .infinity)
                                .border(Color.black)
                        }
                    }
                    
                    VStack(spacing: 0) {
                        ForEach(0..<setores.count, id: \.self) { _ in
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.vertical, 7)
                                .frame(maxWidth: .infinity)
                                .border(Color.black)
                        }
                    }
                    
                }
                .padding(.bottom)
                
                Text("AVIAMENTOS")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                HStack(spacing: 0) {
                    Text("AVIAMENTO")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                    
                    Text("FORNECEDOR")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                    
                    Text("PREÇO")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                    
                    Text("CONSUMO POR PEÇA")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .font(.title)
                        .fontWeight(.black)
                        .border(Color.black)
                }
                .frame(height: 70)
                
                
                ForEach(0...13, id: \.self) { aviamento in
                    HStack(spacing: 0) {
                        TextField("", text: $placeholder)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .font(.title)
                            .fontWeight(.semibold)
                            .border(Color.black)
                        
                        TextField("", text: $placeholder)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .font(.title)
                            .fontWeight(.semibold)
                            .border(Color.black)
                        
                        TextField("", text: $placeholder)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .font(.title)
                            .fontWeight(.semibold)
                            .border(Color.black)
                        
                        TextField("", text: $placeholder)
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .font(.title)
                            .fontWeight(.semibold)
                            .border(Color.black)
                    }
                }
                
                Text("TECIDOS")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top)
                
                ForEach(0...tecidos, id: \.self) { _ in
                    HStack(spacing: 0) {
                        VStack(spacing: 0) {
                            HStack {
                                Text("TECIDO:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)

                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)
                            
                            HStack {
                                Text("APLICAÇÃO:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)

                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)
                            
                            HStack {
                                Text("FORNECEDOR:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    
                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)
                            
                            HStack {
                                Text("CÓD.:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)

                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)
                            
                            HStack {
                                Text("COMP.:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)

                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)
                        }
                        
                        VStack(spacing: 0) {
                            
                            HStack {
                                Text("GRAM.:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)

                            
                            HStack {
                                Text("LARG.:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)

                            
                            HStack {
                                Text("CONS.:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)

                            
                            HStack {
                                Text("PREÇO:")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)

                            
                            HStack {
                                Text(" ")
                                    .padding(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                TextField("", text: $placeholder)
                            }
                            .border(Color.black)

                        }
                    }
                    .padding(.top)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProductionView()
}
