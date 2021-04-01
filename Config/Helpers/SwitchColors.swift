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

func switchColorsView(color:String) -> Filter {
    switch color {
    case "yellow":
        return Filter(color: UIColor.yellow, title: "In the file", width: 80)
    case "purple":
        return Filter(color: UIColor.purple, title: "Shifting the culture", width: 130)
    case "green":
        return Filter(color: UIColor.green, title: "Embrassing the mess", width: 140)
    default:
        return Filter(color: UIColor.yellow, title: "In the file", width: 80)
    }
}
