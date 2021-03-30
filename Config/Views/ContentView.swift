//
//  ContentView.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SpeakerItem(Speaker(id: 1, name: "Jose Tapioca", description: "IDK", role: "Chief Design Office", imageName: "jose-tapioca", links: nil, presentations: nil))    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
