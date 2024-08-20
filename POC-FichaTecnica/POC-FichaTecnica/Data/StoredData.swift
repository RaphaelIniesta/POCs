//
//  StoredData.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 07/08/24.
//

import Foundation
import SwiftUI
import SwiftData

struct Tecido: Identifiable, Codable {
    var id = UUID()
    
    var tecido: String
    var aplicacao: String
    var fornecedor: String
    var cod: String
    var composicao: String
    var gram: String
    var larg: String
    var consumo: String
    var preco: Float
}

@Model
class FichaTecnica {
    
    //Informações Gerais
    var ref: String
    var cliente: String
    var data: String
    var descricao: String
    var grade: String
    var modelagem: String
    
    // Variações
    var variacao: [String]
    var corTecido: [String]
    
    //Rota Produtiva
    var pcp: [String:Float]
    var corte: [String:Float]
    var costura: [String:Float]
    var acabamentos: [String:Float]
    var conferencia: [String:Float]
    var revisao: [String:Float]
    var embalagem: [String:Float]
    var expedicao: [String:Float]
    
    // Aviamentos
    var aviamento: [String]
    var fornecedor: [String]
    var preco: [Float]
    var consumo: [String]
    
    //Tecidos
    var tecidos: [Tecido]
    
    init(ref: String, cliente: String, data: String, descricao: String, grade: String, modelagem: String, variacao: [String], corTecido: [String], pcp: [String : Float], corte: [String : Float], costura: [String : Float], acabamentos: [String : Float], conferencia: [String : Float], revisao: [String : Float], embalagem: [String : Float], expedicao: [String : Float], aviamento: [String], fornecedor: [String], preco: [Float], consumo: [String], tecidos: [Tecido]) {
        self.ref = ref
        self.cliente = cliente
        self.data = data
        self.descricao = descricao
        self.grade = grade
        self.modelagem = modelagem
        self.variacao = variacao
        self.corTecido = corTecido
        self.pcp = pcp
        self.corte = corte
        self.costura = costura
        self.acabamentos = acabamentos
        self.conferencia = conferencia
        self.revisao = revisao
        self.embalagem = embalagem
        self.expedicao = expedicao
        self.aviamento = aviamento
        self.fornecedor = fornecedor
        self.preco = preco
        self.consumo = consumo
        self.tecidos = tecidos
    }
}
