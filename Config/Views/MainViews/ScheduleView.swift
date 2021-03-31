//
//  ScheduleView.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 29/03/21.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        List {
            SearchBar()
            
            HStack(spacing: 14) {
                Filter(color: UIColor.green, title: "Embrassing the mess", width: 140)
                Filter(color: UIColor.purple, title: "Shifting the culture", width: 130)
                Filter(color: UIColor.yellow, title: "In the file", width: 80)
            }
            
            Text("Wednesday, April 21st")
                .font(Font.custom("San-Francisco", size: 25.0))
                .fontWeight(.bold)
                .padding(.top, 20)
            
            PresentationRow(presentations: [DataFile.shared.presentationsData[0]], date: "1:00-1:40pm BRT")
            PresentationRow(presentations: [DataFile.shared.presentationsData[1], DataFile.shared.presentationsData[2]], date: "1:50-2:20pm BRT")
            PresentationRow(presentations: [DataFile.shared.presentationsData[4],DataFile.shared.presentationsData[3]], date: "2:30-3:00pm BRT")
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
