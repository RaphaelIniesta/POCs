//
//  corRoupa.swift
//  POC-PecasSemelhantes
//
//  Created by Raphael Iniesta Reis on 10/07/24.
//

import Foundation

enum corRoupa: String, CaseIterable {
    
    case azul = "Azul"
    case vermelho = "Vermelho"
    case verde = "Verde"
    case branco = "Branco"
    case preto = "Preto"
    case amarelo = "Amarelo"
    
    var cor: String {
        switch self {
        case .azul: return "Azul"
        case .vermelho: return "Vermelho"
        case .verde: return "Verde"
        case .branco: return "Branco"
        case .preto: return "Preto"
        case .amarelo: return "Amarelo"
        }
    }
}
