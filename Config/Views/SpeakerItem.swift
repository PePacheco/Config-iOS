//
//  SpeakerItem.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct SpeakerItem: View {
    var speaker: Speaker
    
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .leading, vertical: .center)){
            SpeakerItemInternal(speaker)
            HStack {
                Spacer()
                Image(systemName: "chevron.right")
            }
        }
    }
}

struct SpeakerItem_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerItem(speaker: DataFile.shared.speakersData[0])
    }
}
