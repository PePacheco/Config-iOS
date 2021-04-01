//
//  PresentationCard.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 30/03/21.
//

import SwiftUI

struct PresentationCard: View {
    var presentation: Presentation
    var body: some View {
        if presentation.isMain {
            MainPresentation(presentation: presentation)
        } else {
            NormalPresentation(presentation: presentation)
        }
    }
}

struct NormalPresentation: View {
    var presentation: Presentation
    
    var body: some View {
        let names: String = presentation.speakers.reduce("", { $0 + $1.name + ", "})
        
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(presentation.title)
                    .font(.system(size: 18, weight: .bold))
                Text(names)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding()
            .padding(.top, 20)
            Spacer()
        }
        .frame(width: 250, height: 150)
        .border(width: 25, edges: [.top], color: switchColors(color: presentation.bannerName))
        .border(Color.black, width: 5)
    }
}

struct MainPresentation: View {
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
                    .font(.system(size: 18, weight: .bold))
                Text(presentation.speakers[0].role)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.gray)
            }
            .padding()
            .padding(.top, 20)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(presentation.title)
                    .font(.system(size: 20, weight: .bold))
                Text(presentation.description)
                    .font(.system(size: 15, weight: .light))
            }
            .padding(.trailing)
            .padding(.vertical)
            .padding(.top, 20)
        }
        .frame(width: 400, height: 200)
        .border(Color.black, width: 5)
        .border(width: 25, edges: [.top], color: .black)
    }
}

struct PresentationCard_Previews: PreviewProvider {
    static var previews: some View {
        PresentationCard(presentation: DataFile.shared.presentationsData[1])
    }
}
