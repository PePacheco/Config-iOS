//
//  TabBarView.swift
//  Config
//
//  Created by Nicolas Godoy on 31/03/21.
//

import SwiftUI

struct TabBarView: View {
    enum Tabs: String {
        case schedule = "Schedule"
        case speakers = "Speakers"
        case account = "Account"
    }
    var tabName: String {
        tab.rawValue
    }
    @State var tab: Tabs = .schedule
    var body: some View {
        TabView(selection: $tab) {
            ScheduleView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Schedule")
                }
                .tag(Tabs.schedule)
            
            Text("Speakers")
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Speakers")
                }
                .tag(Tabs.speakers)
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
