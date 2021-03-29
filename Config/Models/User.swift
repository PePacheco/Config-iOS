//
//  User.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct User {
    var name: String
    var age: Int
    var email: String
    var password: String
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
