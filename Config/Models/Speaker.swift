//
//  Speaker.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct Speaker: Identifiable {
    let id: Int
    var name: String
    var description: String
    var role: String
    var imageName: String
    //MARK: --DEV ONLY, REMOVE THIS OPTIONALS LATER!!!
    var links: [String: String]?
    var presentations: [Presentation]?
    
    var image: Image {
        Image(imageName)
    }
}
