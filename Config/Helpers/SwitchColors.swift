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
        return Color("project-yellow")
    case "purple":
        return Color("project-pink")
    case "green":
        return Color("project-green")
    default:
        return .black
    }
}

func switchColorsView(color:String) -> Filter {
    switch color {
    case "yellow":
        return Filter(color: UIColor(Color("project-yellow")), title: "In the file", width: 80)
    case "purple":
        return Filter(color: UIColor(Color("project-pink")), title: "Shifting the culture", width: 130)
    case "green":
        return Filter(color: UIColor(Color("project-green")), title: "Embracing the mess", width: 140)
    default:
        return Filter(color: UIColor(Color("project-yellow")), title: "In the file", width: 80)
    }
}
