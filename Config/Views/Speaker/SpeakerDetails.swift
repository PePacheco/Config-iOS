//
//  SpeakerDetails.swift
//  Config
//
//  Created by Anderson Sprenger on 31/03/21.
//

import SwiftUI

struct SpeakerDetails: View {
    var speaker: Speaker
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: nil) {
                HStack {
                    SpeakerItemInternal(speaker)
                    Spacer()
                }
                Text(speaker.description)
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("Inter-Medium", size: 17))
                    .padding(.top, 24)
                HStack {
                    Text("")
                }
                Divider()
                HStack {
                    Text("Keynotes")
                        .font(Font.custom("Inter-Bold", size: 24))
                        .kerning(-0.64)
                        .padding(.vertical, 15)
                    Spacer()
                }
                VStack {
                    ForEach (DataFile.shared.presentationsData) { presentation in
                        if presentation.speakers.contains(where: { (pearson) -> Bool in
                            speaker.id == pearson.id
                        }) {
                            SpeakerDetailPresentationView(presentation: presentation)
                                .padding(.all, 10)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct SpeakerDetails_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerDetails(speaker: DataFile.shared.speakersData[1])
    }
}
