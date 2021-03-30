//
//  SpeakerItem.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct SpeakerItem: View {
    var name: String
    var role: String
    var image: Image
    
    init(_ speaker : Speaker) {
        self.name  = speaker.name
        self.role  = speaker.role
        self.image = speaker.image
    }
    
    var body: some View {
        HStack(alignment: .center) {
            CircleImage(image: image)
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(Font.custom("RobotoMono-Bold", size: 27))
                Text(role)
                    .font(Font.custom("Inter-Regular", size: 15))
            }
        }
    }
}

struct SpeakerItem_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerItem(Speaker(id: 1, name: "Jose Tapioca", description: "IDK", role: "Chief Design Office", imageName: "jose-tapioca", links: nil, presentations: nil))
    }
}
