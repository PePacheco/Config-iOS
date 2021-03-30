//
//  Schedule.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

class Data {
    static var shared:Data = Data()
    var users: [Speaker]

    var presentations: [Presentation]

    var presentations2: [Presentation]

    init() {
        users = [
            Speaker(id: 1, name: "Carlos", description: "Carlos amigo", role: "Developer", imageName: "carlos", links: ["twitter": "twiter.com"], presentations: []),
            Speaker(id: 2, name: "Amanda", description: "Amanda amiga", role: "Developer", imageName: "amanda", links: ["instagram": "instagram.com"], presentations: [])
        ]
        presentations2 = [
            .init(id: 2, title: "Should devs design?", description: "", date: Date(), speakers: users, tag: .embracingTheMess, bannerName: "", isMain: false),
            .init(id: 3, title: "Should devs develop?", description: "", date: Date(), speakers: users, tag: .embracingTheMess, bannerName: "", isMain: false)
        ]
        presentations = [
            .init(id: 1, title: "Short Stories from the making of... well, we can't tell you. Yet,", description: "Dylan will kick things off with opening remarks and some exciting product announcements", date: Date(), speakers: users, tag: .inTheFile, bannerName: "", isMain: true),
            .init(id: 2, title: "Should devs design?", description: "", date: Date(), speakers: users, tag: .embracingTheMess, bannerName: "", isMain: false),
            .init(id: 3, title: "Should designers develop?", description: "", date: Date(), speakers: users, tag: .embracingTheMess, bannerName: "", isMain: false)
        ]
        
    }
}


struct Schedule: View {
    var body: some View {
        NavigationView {
            List {
                SearchBar()
                PresentationRow(presentations: Data.shared.presentations)
            }
            .navigationTitle("Schedule")
            .background(Color.blue)
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
