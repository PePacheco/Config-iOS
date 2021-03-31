//
//  SpeakerItem.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct SpeakerItemInternal: View {
    var name: String
    var role: String
    var image: Image
    
    init(_ speaker : Speaker) {
        self.name  = speaker.name
        self.role  = speaker.role
        self.image = speaker.image
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 18) {
            CircleImage(image: image)
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(Font.custom("RobotoMono-Bold", size: 20))
                Text(role)
                    .font(Font.custom("Inter-Regular", size: 12))
            }
        }
    }
}

struct SpeakerItemInternal_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerItemInternal(DataFile.shared.speakersData[0])
    }
}
