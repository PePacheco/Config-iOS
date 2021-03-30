//
//  FormatDate.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import Foundation

func dateFormatDay (date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none

    dateFormatter.locale = Locale(identifier: "en_US")
    
    return (dateFormatter.string(from: date))
}

func dateFormatHour (date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .none
    dateFormatter.timeStyle = .medium

    dateFormatter.locale = Locale(identifier: "en_US")
    
    return (dateFormatter.string(from: date))
}
