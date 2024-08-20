//
//  ContentView.swift
//  POC-PecasSemelhantes
//
//  Created by Raphael Iniesta Reis on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    
    let armario = [Roupa(tipo: .blusa, cor: .azul, textura: .liso),
                   Roupa(tipo: .calca, cor: .azul, textura: .jeans),
                   Roupa(tipo: .calcado, cor: .preto, textura: .couro),
                   Roupa(tipo: .blusa, cor: .branco, textura: .padrao),
                   Roupa(tipo: .top, cor: .branco, textura: .liso),
                   Roupa(tipo: .calca, cor: .branco, textura: .jeans),
                   Roupa(tipo: .calcado, cor: .branco, textura: .couro),
                   Roupa(tipo: .camiseta, cor: .branco, textura: .padrao),
                   Roupa(tipo: .blusa, cor: .amarelo, textura: .liso),
                   Roupa(tipo: .calca, cor: .branco, textura: .jeans),
                   Roupa(tipo: .calcado, cor: .branco, textura: .couro)]
    
    @State var cor: corRoupa = .branco
    @State var textura: tecidoRoupa = .liso
    @State var possui: Bool = false
    
    var body: some View {
        VStack {
            
            if(possui) {
                Text("Tem coisa parecida já, hein 😉")
                    .font(.title2)
                    .bold()
                    .padding()
            } else {
                Text("Tem nada que seja parecido 😢")
                    .font(.title2)
                    .bold()
                    .padding()
            }
            
            Text("Tenho roupa que combina?")
            
            Picker("Qual a cor?", selection: $cor) {
                ForEach(corRoupa.allCases, id: \.self) { cor in
                    Text(cor.rawValue).tag(cor)
                }
            }
            
            Picker("Qual a textura?", selection: $textura) {
                ForEach(tecidoRoupa.allCases, id: \.self) { textura in
                    Text(textura.rawValue).tag(textura)
                }
            }
            
            Button("Verifica se tem roupa que combina") {
                possui = verificaArmario(cor: cor, textura: textura)
            }
        }
        .padding()
    }
    
    func verificaArmario(cor: corRoupa, textura: tecidoRoupa) -> Bool {
        var tem: Bool = false
        let verifica = Roupa(tipo: .blusa, cor: cor, textura: textura)
        let combina = montarLook(base: verifica)
        
        for i in 0..<armario.count {
            for j in 0...2 {
                if(armario[i].cor == cor && armario[i].textura == textura && armario[i].tipo != .blusa) {
                    tem = true
                }
            }
        }
        
        return tem
    }
}

#Preview {
    ContentView()
}
