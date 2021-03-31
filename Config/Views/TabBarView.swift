//
//  TabBarView.swift
//  Config
//
//  Created by Nicolas Godoy on 31/03/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ScheduleView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Schedule")
                }
            
            Text("Speakers")
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Speakers")
                }
            Text("Account")
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
