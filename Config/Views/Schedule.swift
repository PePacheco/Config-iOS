//
//  Schedule.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

var users: [Speaker] = [
    Speaker(id: 1, name: "Carlos", description: "Carlos amigo", role: "Developer", imageName: "carlos", links: ["twitter": "twiter.com"], presentations: []),
    Speaker(id: 2, name: "Amanda", description: "Amanda amiga", role: "Developer", imageName: "carlos", links: ["instagram": "instagram.com"], presentations: [])
]

var presentations: [Presentation] = [
    .init(id: 1, title: "Short Stories from the making of... well, we can't tell you. Yet,", description: "Dylan will kick things off with opening remarks and some exciting product announcements", date: Date(), speakers: users, tag: .inTheFile, bannerName: "", isMain: true),
    .init(id: 1, title: "Should devs design?", description: "", date: Date(), speakers: users, tag: .embracingTheMess, bannerName: "", isMain: false)
]

struct Schedule: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar()
                
                List {
                    ForEach(presentations) { presentation in
                        Text(presentation.title)
                    }
                }
            }
            .navigationTitle("Schedule")
        }
    }
}

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
            Text("Search")
                .foregroundColor(.black)
            Spacer()
        }
        .frame(width: 385, height: 50)
        .background(Color(UIColor.lightGray))
        .opacity(0.5)
        .cornerRadius(8)
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
