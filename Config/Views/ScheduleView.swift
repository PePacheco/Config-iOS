//
//  ScheduleView.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        NavigationView {
            List {
                SearchBar()
                Text("Wednesday, April 21st")
                    .font(Font.custom("San-Francisco", size: 25.0))
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                PresentationRow(presentations: [DataFile.shared.presentationsData[0]], date: "1:00-1:40pm BRT")
                PresentationRow(presentations: [DataFile.shared.presentationsData[1], DataFile.shared.presentationsData[2]], date: "1:50-2:20pm BRT")
                PresentationRow(presentations: [DataFile.shared.presentationsData[4],DataFile.shared.presentationsData[3]], date: "2:30-3:00pm BRT")
            }
            .navigationTitle("Schedule")
            .background(Color.blue)
            .foregroundColor(.black)
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
