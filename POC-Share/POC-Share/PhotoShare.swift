//
//  PhotoShare.swift
//  POC-Share
//
//  Created by Raphael Iniesta Reis on 25/06/24.
//

import Foundation
import SwiftUI

struct Photo: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }


    public var image: Image
    public var caption: String
}
