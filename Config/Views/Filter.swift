//
//  Filter.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 31/03/21.
//

import SwiftUI

struct Filter: View {
    let color: UIColor
    let title: String
    let width: CGFloat
    var body: some View {
        HStack(alignment: .center) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
        }
        .frame(width: width, height: 30)
        .background(Color(color))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.black, lineWidth: 3)
        )
    }
}
