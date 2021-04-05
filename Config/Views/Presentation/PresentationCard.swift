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
            VStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 257, height: 24, alignment: .center)
                    .foregroundColor(switchColors(color: presentation.bannerName))
                    .border(Color.black, width: 4)
                    .offset(x: 4)
                
                Text(presentation.title)
                    .font(Font.custom("RobotoMono-Bold", size: 18))
                    .kerning(-0.64)
                    .lineLimit(3)
                    .padding(.leading, 18)
                    .padding(.trailing, 8)
                    .padding(.bottom, 8)
                
                Text(names)
                    .font(Font.custom("Inter-Regular", size: 12))
                    .foregroundColor(.gray)
                    .offset(x: 18)
                Spacer()
            }
            Spacer()
        }
        .frame(width: 257, height: 170)
        //.border(width: 25, edges: [.top], color: switchColors(color: presentation.bannerName))
        .border(Color.black, width: 4)
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
                Text(presentation.speakers[0].name)
                    .font(Font.custom("RobotoMono-Bold", size: 15))
                Text(presentation.speakers[0].role)
                    .font(Font.custom("Inter-Regular", size: 12))
                    .foregroundColor(.gray)
            }
            .padding()
            .padding(.top, 20)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(presentation.title)
                    .font(Font.custom("RobotoMono-Bold", size: 20))
                    .kerning(-0.64)
                Text(presentation.description)
                    .font(Font.custom("Inter-Regular", size: 12))
            }
            .padding(.trailing)
            .padding(.vertical)
            .padding(.top, 20)
        }
        .frame(width: 372, height: 200)
        .border(Color.black, width: 4)
        .border(width: 25, edges: [.top], color: .black)
    }
}

struct PresentationCard_Previews: PreviewProvider {
    static var previews: some View {
        PresentationCard(presentation: DataFile.shared.presentationsData[3])
    }
}
