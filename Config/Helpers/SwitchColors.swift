//
//  SwitchColors.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 30/03/21.
//

import SwiftUI

func switchColors(color:String) -> Color {
    switch color {
    case "yellow":
        return .yellow
    case "purple":
        return .purple
    case "green":
        return .green
    default:
        return .black
    }
}
