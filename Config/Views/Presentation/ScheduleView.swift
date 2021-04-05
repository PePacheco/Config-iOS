//
//  ScheduleView.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 26) {
                SearchBar()
                
                HStack(spacing: 6) {
                    Filter(color: UIColor(Color("project-green")), title: "Embracing the mess", width: 140)
                    Filter(color: UIColor(Color("project-pink")), title: "Shifting team culture", width: 150)
                    Filter(color: UIColor(Color("project-yellow")), title: "In the file", width: 80)
                }
                
                Text("Wednesday, April 21st")
                    .font(Font.custom("Inter-Bold", size: 24))
                    .padding(.top, 20)
                    .offset(y: 20)
                
                PresentationRow(presentations: [DataFile.shared.presentationsData[0]], date: DataFile.shared.presentationsData[0].date)
                Divider()
                PresentationRow(presentations: [DataFile.shared.presentationsData[1], DataFile.shared.presentationsData[2]], date: DataFile.shared.presentationsData[1].date)
                Divider()

                PresentationRow(presentations: [DataFile.shared.presentationsData[4],DataFile.shared.presentationsData[3]], date: DataFile.shared.presentationsData[4].date)
            }
            .padding(.horizontal, 23)
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
