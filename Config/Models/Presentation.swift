//
//  Presentation.swift.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct Presentation: Identifiable {
    
    enum Tag: Int, CaseIterable {
        case embracingTheMess = 1
        case inTheFile = 2
        case shifting = 3
    }
    
    let id: Int
    var title: String
    var description: String
    var date: Date
    var speakers: [Speaker]
    var tag: Tag
    var bannerName: String
    
    var banner: Image {
        Image(bannerName)
    }
    var isMain: Bool
}
