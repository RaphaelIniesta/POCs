//
//  POC_FichaTecnicaApp.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 16/07/24.
//

import SwiftUI
import SwiftData

@main
struct POC_FichaTecnicaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: FichaTecnica.self)
    }
}
