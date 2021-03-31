//
//  TabBarView.swift
//  Config
//
//  Created by Nicolas Godoy on 31/03/21.
//

import SwiftUI

struct TabBarView: View {
    @State var tab: Tabs = .schedule
    
    enum Tabs: String {
        case schedule = "Schedule"
        case speakers = "Speakers"
        case account = "Account"
    }
    
    var tabName: String {
        tab.rawValue
    }
    
    var body: some View {
        TabView(selection: $tab) {
            ScheduleView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Schedule")
                }
                .tag(Tabs.schedule)
            
            SpeakersView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Speakers")
                }
<<<<<<< HEAD
            
=======
                .tag(Tabs.speakers)
>>>>>>> f90e5cab5d90a055fc07f457d5e94a0985bcefb6
            Text("Account")
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
                .tag(Tabs.account)
        }
        .navigationTitle(tabName)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
