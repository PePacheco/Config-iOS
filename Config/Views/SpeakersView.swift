//
//  SpeakersView.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct SpeakersView: View {
    var body: some View {
        ScrollView {
            ForEach (DataFile.shared.speakersData) { speaker in
                VStack(alignment: .leading, spacing: nil) {
                    SpeakerItem(speaker: speaker)
                    Divider()
                        .padding(.vertical, 15)
                }
                .padding(.horizontal)
            }
            ForEach (DataFile.shared.speakersData) { speaker in
                VStack(alignment: .leading, spacing: nil) {
                    SpeakerItem(speaker: speaker)
                    Divider()
                        .padding(.vertical, 15)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SpeakersView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakersView()
    }
}
