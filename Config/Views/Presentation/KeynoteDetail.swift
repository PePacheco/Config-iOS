//
//  KeynoteDetail.swift
//  Config
//
//  Created by Nicolas Godoy on 30/03/21.
//

import SwiftUI

struct KeynoteDetail: View {
    var presentation: Presentation
    var speaker: Speaker
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                SearchBar()
                
                Image(presentation.bannerName)
                //Image(presentation.banner)
                    .resizable()
                    .frame(maxHeight: 50, alignment: .center)
                    .padding(.top)
                
                Text(presentation.title)
                    .font(Font.custom("RobotoMono-Bold", size: 20))
                    .bold()
                    .padding(.top,25)
                
                //Text("4/21 1:50-2:20pm BRT")
                //me digam o que acham... o de antes esta comentado em cima
                Text(presentation.date)
                    .font(Font.custom("RobotoMono-Bold", size: 20))
                    .bold()
                    .padding(.top,20)
                    .font(.title)
                
                Text(presentation.description)
                    .font(Font.custom("Inter-Regular", size: 16))
                    //.multilineTextAlignment(.center)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                
                switchColorsView(color: presentation.bannerName)
                    .padding(.leading, 10)
                
                Divider()
                
                Text("Speakers")
                    .padding(.leading, 10)
                    .font(.title)
                
                NavigationLink(
                    destination: SpeakersView(),
                    label: {
                        SpeakerItem(speaker: speaker)
                            .padding(10)
                            .foregroundColor(.black)
                    })
            }
        }
        .padding(26)
        .navigationBarTitle("Keynote", displayMode: .inline)
    }
}

struct KeynoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        KeynoteDetail(
            presentation: DataFile.shared.presentationsData[0],
            speaker: DataFile.shared.speakersData[0]
        )
    }
}
