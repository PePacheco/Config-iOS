//
//  SpeakersView.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct SpeakersView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach (0..<10) { id in
                    VStack(alignment: .leading, spacing: nil) {
                        SpeakerItem(speaker: DataFile.shared.speakersData[0])
                        Divider()
                            .padding(.vertical, 15)
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Speakers")
        }
    }
}

struct SpeakersView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakersView()
    }
}
