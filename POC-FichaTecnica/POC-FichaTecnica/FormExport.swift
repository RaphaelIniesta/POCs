//
//  FormExport.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 17/07/24.
//

import SwiftUI

struct FormExport: View {
    
    var gen: String = "Teste"
    var grade: String = "Teste"
    var qtd: String = "Teste"
    var ref: String = "Teste"
    
    let headers: [String] = ["Gênero", "Grade", "Quantidade", "Referência"]
    
    let height = UIScreen.main.bounds.size.height
    let width = UIScreen.main.bounds.size.width
    
    var body: some View {
            ScrollView {
                HStack {
                    VStack {
                        ForEach(headers, id: \.self) { header in
                            VStack(alignment: .leading, spacing: 2) {
                                Text("\(header)")
                                    .foregroundStyle(.gray)
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(maxWidth: width/2)
                                    .frame(height: height * 0.039)
                                    .padding(.trailing)
                                    .foregroundStyle(.white)
                                    .overlay {
                                        Text("Placeholder")
                                            .textFieldStyle(.roundedBorder)
                                            .frame(maxWidth: width/2, alignment: .leading)
                                            .padding(.leading)
                                    }
                            }
                        }
                    }
                    .frame(maxWidth: width/2, alignment: .leading)
                    
                    Divider()
                    
                    VStack {
                        TableView()
                    }
                }
                .frame(maxHeight: height/2, alignment: .leading)
                
                Divider()
                
                HStack {
                    Image("Psicopato")
                        .resizable()
                        .scaledToFit()
                        .frame(width: width/2, height: height/2)
                        .border(Color.black)
                    
                    Divider()
                    
                    VStack {
//                        Text("Desenho técnico")
//                            .font(.largeTitle)
//                            .bold()
//                            .padding(.top)
                        
                        Image("Psyduck")
                            .resizable()
                            .scaledToFit()
//                            .frame(maxWidth: 500, maxHeight: 500)
                            .frame(width: width/2, height: height/2)
                            .padding(.bottom)
                            .border(Color.black)
                        
                    }
                    
                    
                    Spacer()
                }
                .padding(.horizontal)
                .frame(width: width)
            }
            .frame(width: width, height: height)
            
    }
}


#Preview {
    FormExport()
}
