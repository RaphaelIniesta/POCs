//
//  combina.swift
//  POC-PecasSemelhantes
//
//  Created by Raphael Iniesta Reis on 10/07/24.
//

import Foundation

func montarLook(base: Roupa) -> Look {
    let peca2 = escolherCalca(base: base)
    let peca3 = escolherJaqueta(base: base, peca2: peca2)
    let peca4 = escolherCalcado(base: base, peca2: peca3)
    
    return Look(blusa: base, jaqueta: peca2, calca: peca3, calcado: peca4)
}

func escolherCalca(base: Roupa) -> Roupa {
    switch base.cor {
    case .vermelho:
        return Roupa(tipo: .calca, cor: .preto, textura: .liso)
    case .azul:
        return Roupa(tipo: .calca, cor: .branco, textura: .jeans)
    case .verde:
        return Roupa(tipo: .calca, cor: .preto, textura: .couro)
    case .preto:
        return Roupa(tipo: .calca, cor: .azul, textura: .seda)
    case .branco:
        return Roupa(tipo: .calca, cor: .verde, textura: .padrao)
    case .amarelo:
        return Roupa(tipo: .calca, cor: .preto, textura: .liso)
    }
}

func escolherJaqueta(base: Roupa, peca2: Roupa) -> Roupa {
    switch base.textura {
    case .liso:
        return Roupa(tipo: .jaqueta, cor: .preto, textura: .couro)
    case .padrao:
        return Roupa(tipo: .jaqueta, cor: .branco, textura: .jeans)
    case .jeans:
        return Roupa(tipo: .jaqueta, cor: .verde, textura: .seda)
    case .couro:
        return Roupa(tipo: .jaqueta, cor: .azul, textura: .padrao)
    case .seda:
        return Roupa(tipo: .jaqueta, cor: .vermelho, textura: .liso)
    }
}

func escolherBlusa(base: Roupa, peca2: Roupa) -> Roupa {
    switch base.textura {
    case .liso:
        return Roupa(tipo: .blusa, cor: .preto, textura: .couro)
    case .padrao:
        return Roupa(tipo: .blusa, cor: .branco, textura: .jeans)
    case .jeans:
        return Roupa(tipo: .blusa, cor: .verde, textura: .seda)
    case .couro:
        return Roupa(tipo: .blusa, cor: .azul, textura: .padrao)
    case .seda:
        return Roupa(tipo: .blusa, cor: .vermelho, textura: .liso)
    }
}

func escolherCalcado(base: Roupa, peca2: Roupa) -> Roupa {
    switch base.textura {
    case .liso:
        return Roupa(tipo: .calcado, cor: .preto, textura: .couro)
    case .padrao:
        return Roupa(tipo: .calcado, cor: .branco, textura: .couro)
    case .jeans:
        return Roupa(tipo: .calcado, cor: .verde, textura: .couro)
    case .couro:
        return Roupa(tipo: .calcado, cor: .azul, textura: .couro)
    case .seda:
        return Roupa(tipo: .calcado, cor: .vermelho, textura: .couro)
    }
}
