//
//  PresentationCard.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct PresentationCard: View {
    var presentation: Presentation
    var body: some View {
        HStack {
            VStack {
                presentation.speakers[0].image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
                    .shadow(radius: 7)
                Text(presentation.speakers[0].name)
                    .bold()
                Text(presentation.speakers[0].role)
                    .foregroundColor(.gray)
                    .font(.subheadline)
            }
            
            VStack {
                Text(presentation.title)
                Text(presentation.description)
            }
        }
    }
}

struct PresentationCard_Previews: PreviewProvider {
    static var previews: some View {
        PresentationCard(presentation: presentations[0])
    }
}
