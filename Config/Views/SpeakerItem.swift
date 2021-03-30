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
        HStack {
            CircleImage(image: image)
            VStack(alignment: .leading) {
                Text(name)
                Text(role)
            }
        }
    }
}

struct SpeakerItem_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerItem(Speaker(id: 1, name: "Jose Tapioca", description: "IDK", role: "CDO", imageName: "jose-tapioca", links: nil, presentations: nil))
    }
}
