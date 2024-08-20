//
//  MateriaPrima.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 16/07/24.
//

import Foundation

struct MateriaPrima: Identifiable {
    let id = UUID()
    let tecidoAviamento: String
    let fornecedor: String
    let qtd: String
    let cor: String
}
