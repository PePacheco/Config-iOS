//
//  PresentationRow.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct PresentationRow: View {
    var presentations: [Presentation]
    var body: some View {
        VStack(alignment: .leading) {
//            Text(dateFormatDay(date: presentation.date))
//                .bold()
//                .font(.title)
//                .padding(.top, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(presentations) { presentation in
                        PresentationCard(presentation: presentation)
                    }
                }
            }
        }
    }
}
struct PresentationCard_Previews: PreviewProvider {
    
    static var previews: some View {
        PresentationRow(presentations: Data.shared.presentations)
    }
}
