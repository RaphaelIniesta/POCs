//
//  Informacoes-Tecnico.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 24/07/24.
//

import SwiftUI

struct Informacoes_Tecnico: View {
    
    @State var variantes: [String] = []
    @State var placeholder: String = ""
    
    @State var qtd: Int = 0
    @State var qtdTecido: Int = 1
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    Text("Informações Gerais")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    
                    HStack(spacing: 0) {
                        VStack {
                            Text("REF: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                        
                        VStack {
                            Text("CLIENTE: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                        
                        VStack {
                            Text("DATA: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 0) {
                        VStack {
                            Text("DESCRIÇÃO: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                        
                        VStack {
                            Text("SEGMENTO: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 0) {
                        VStack {
                            Text("COLEÇÃO: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                        
                        VStack {
                            Text("GRADE: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                        
                        
                        VStack {
                            Text("MODELAGEM BASE: ")
                                .padding(.horizontal)
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                            TextField("", text: $placeholder)
                                .frame(height: 20)
                                .padding(.horizontal)
                                .padding(.bottom, 7)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .border(Color.black, width: 2)
                        
                        
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                Text("Combinações")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                HStack {
                    VStack(spacing: 0) {
                        HStack(spacing: 0) {
                            Text("VARIANTES")
                                .padding(.horizontal)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .border(Color.black, width: 2)
                            
                            ForEach(1...qtdTecido, id: \.self) { tecido in
                                Text("COR TECIDO \(qtdTecido)")
                                    .padding(.horizontal)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity)
                                    .border(Color.black, width: 2)
                            }
                        }
                        
                        ForEach(variantes, id: \.self) { variante in
                            HStack(spacing: 0) {
                                Text(variante)
                                    .padding(.horizontal)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity)
                                    .border(Color.black, width: 2)
                                
                                ForEach(1...qtdTecido, id: \.self) { tecido in
                                    TextField("", text: $placeholder)
                                        .frame(height: 20)
                                        .padding(.horizontal)
                                        .padding(.vertical, 7)
                                        .frame(maxWidth: .infinity)
                                        .border(Color.black, width: 2)
                                }
                            }
                        }
                        
                        Button {
                            qtd += 1
                            variantes.append("Variante \(qtd)")
                        } label: {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundStyle(.blue)
                                .opacity(0.3)
                                .overlay {
                                    Image(systemName: "plus.circle")
                                        .resizable()
                                        .scaledToFit()
                                }
                        }
                        .padding(.top)
                    }
                    .padding([.bottom, .horizontal])
                    
                    Button {
                        qtdTecido += 1
                    } label: {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(maxHeight: .infinity)
                            .frame(width: 50)
                            .foregroundStyle(.blue)
                            .opacity(0.3)
                            .overlay {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .scaledToFit()
                            }
                    }
                    .padding(.leading)
                }
                
                HStack {
                    VStack {
                        Text("DESENHO TÉCNICO (FRENTE)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                            .fontWeight(.black)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.size.height * 0.75)
                            .foregroundStyle(.clear)
                            .border(Color.black, width: 3)
                    }
                    
                    VStack {
                        Text("DESENHO TÉCNICO (COSTAS)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                            .fontWeight(.black)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.size.height * 0.75)
                            .foregroundStyle(.clear)
                            .border(Color.black, width: 3)
                    }
                    
                }
                .padding([.bottom, .horizontal])
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: ProductionView(), label: {
                        HStack {
                            Text("Produção")
                            Image(systemName: "chevron.forward")
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    Informacoes_Tecnico()
}
