//
//  SaveView.swift
//  POC-FichaTecnica
//
//  Created by Raphael Iniesta Reis on 17/07/24.
//

import Foundation
import SwiftUI

@MainActor func render() -> URL {
//    let renderer = ImageRenderer(content: FormExport())
    let renderer = ImageRenderer(content: TableView())

    let url = URL.documentsDirectory.appending(path: "output.pdf")

    renderer.render { size, context in
        
        var box = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {
            return
        }

        pdf.beginPDFPage(nil)

        context(pdf)

        pdf.endPDFPage()
        pdf.closePDF()
    }

    return url
}
