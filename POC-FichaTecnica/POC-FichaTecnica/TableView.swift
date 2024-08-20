//
//  TableView.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 16/07/24.
//

import SwiftUI

struct TableView: View {
    
    @State var materiais = [MateriaPrima(tecidoAviamento: "lã", fornecedor: "Tecidos ltda.", qtd: "60m", cor: "Rosa"),
                            MateriaPrima(tecidoAviamento: "Botão", fornecedor: "Boi-tão", qtd: "300 unidades", cor: "Branco"),
                            MateriaPrima(tecidoAviamento: "Fivela", fornecedor: "Finn-velas", qtd: "60 unidades", cor: "Dourado"),
                            MateriaPrima(tecidoAviamento: "Algodão", fornecedor: "Gudan Algodões", qtd: "20 m", cor: "Amarelo"),
                            MateriaPrima(tecidoAviamento: "Cinto", fornecedor: "Cinto-muito", qtd: "60 unidades", cor: "Preto"),
                            MateriaPrima(tecidoAviamento: "Lona", fornecedor: "Lonaria", qtd: "30m", cor: "Verde"),
                            MateriaPrima(tecidoAviamento: "Seda", fornecedor: "Seda", qtd: "20m", cor: "Lilás")]
    
    var body: some View {
        Table(materiais) {
            TableColumn("Tecido/Aviamento", value: \.tecidoAviamento)
            TableColumn("Fornecedor", value: \.fornecedor)
            TableColumn("Quantidade", value: \.qtd)
            TableColumn("Cor", value: \.cor)
        }
    }
}

#Preview {
    TableView()
}
