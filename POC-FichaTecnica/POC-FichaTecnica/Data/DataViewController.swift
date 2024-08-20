//
//  DataViewController.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 07/08/24.
//

import Foundation
import SwiftUI
import SwiftData

class DataViewController: UIViewController {
    func saveData(context: ModelContext, ficha: FichaTecnica) {
        let newData = ficha
        
        context.insert(newData)
    }
}
