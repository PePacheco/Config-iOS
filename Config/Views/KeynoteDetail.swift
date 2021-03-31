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
                
                Spacer()
                
                Text(presentation.title)
                    .font(Font.custom("RobotoMono-Bold", size: 20))
                    .bold()
                    .padding(.top,25)
                
                Text("4/21 1:50-2:20pm BRT")
                    .font(Font.custom("RobotoMono-Bold", size: 20))
                    .bold()
                    .padding(.top,20)
                    .font(.title)
                
                Text(presentation.description)
                    .font(Font.custom("Inter-Regular", size: 16))
                    //.multilineTextAlignment(.center)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                
                Divider()
                
                Text("Speakers")
                    .padding(.top, 10)
                    .font(.title)
                
                SpeakerItem(speaker: speaker)
                
            }
        }
        .padding(10)
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