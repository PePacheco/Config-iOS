//
//  PresentationRow.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct PresentationRow: View {
    var presentations: [Presentation]
    var date: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(date)
                .bold()
                .font(.subheadline)
                .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 20) {
                    ForEach(presentations) { presentation in
                        PresentationCard(presentation: presentation)
                    }
                }
            }
        }
    }
}

