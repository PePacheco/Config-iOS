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
                .font(Font.custom("RobotoMono-Bold", size: 20))
                .padding(.bottom, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 20) {
                    ForEach(presentations) { presentation in
                        NavigationLink(destination: KeynoteDetail(presentation: presentation, speaker: presentation.speakers[0])) {
                            PresentationCard(presentation: presentation)
                        }
                    }
                }
            }
        }
    }
}

struct PresentationRow_Previews: PreviewProvider {
    static var previews: some View {
        PresentationRow(presentations: [DataFile.shared.presentationsData[0]], date: DataFile.shared.presentationsData[0].date)
    }
}

