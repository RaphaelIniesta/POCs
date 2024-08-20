//
//  CustomForm.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 17/07/24.
//

import SwiftUI

struct CustomForm: View {
    
    @State var gen: String = ""
    @State var grade: String = ""
    @State var qtd: String = ""
    @State var ref: String = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Gênero")
                        .foregroundStyle(.gray)
                    RoundedRectangle(cornerRadius: 5)
                        .frame(maxWidth: 600)
                        .frame(height: 30)
                        .padding(.trailing)
                        .foregroundStyle(.white)
                        .overlay {
                            Text("Placeholder")
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 600, alignment: .leading)
                                .padding(.leading)
                        }
                    
                    Text("Grade")
                        .foregroundStyle(.gray)
                    RoundedRectangle(cornerRadius: 5)
                        .frame(maxWidth: 600)
                        .frame(height: 30)
                        .padding(.trailing)
                        .foregroundStyle(.white)
                        .overlay {
                            Text("Placeholder")
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 600, alignment: .leading)
                                .padding(.leading)
                        }
                    
                    Text("Quantidade")
                        .foregroundStyle(.gray)
                    RoundedRectangle(cornerRadius: 5)
                        .frame(maxWidth: 600)
                        .frame(height: 30)
                        .padding(.trailing)
                        .foregroundStyle(.white)
                        .overlay {
                            Text("Placeholder")
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 600, alignment: .leading)
                                .padding(.leading)
                        }
                    
                    Text("Referência")
                        .foregroundStyle(.gray)
                    RoundedRectangle(cornerRadius: 5)
                        .frame(maxWidth: 600)
                        .frame(height: 30)
                        .padding(.trailing)
                        .foregroundStyle(.white)
                        .overlay {
                            Text("Placeholder")
                                .textFieldStyle(.roundedBorder)
                                .frame(maxWidth: 600, alignment: .leading)
                                .padding(.leading)
                        }
                }
                .padding([.horizontal, .top])
                .frame(maxWidth: 500)
                
                Divider()
                
                VStack {
                    Text("Matéria Prima")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)
                    
                    TableView()
                        .frame(maxHeight: 350)
                }
            }
            
            Divider()
            
            HStack {
                Image("Psicopato")
                    .resizable()
                    .frame(maxWidth: 500, maxHeight: 500)
                
                Divider()
                
                Spacer()
                
                VStack {
                    Text("Desenho técnico")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top)
                    
                    Image("Psyduck")
                        .resizable()
                        .frame(maxWidth: 500, maxHeight: 500)
                        .padding(.bottom)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .padding()
        .background(Color.lightGray)
    }
}

#Preview {
    CustomForm()
}
