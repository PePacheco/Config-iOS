//
//  SpeakerDetailPresentationView.swift
//  Config
//
//  Created by Anderson Sprenger on 31/03/21.
//

import SwiftUI

struct SpeakerDetailPresentationView: View {
    var presentation: Presentation
    
    var body: some View {
        let names: String = presentation.speakers.reduce("", { $0 + $1.name + ", "})
        
        VStack {
            Text("data formatada") //TODO: Use formated date...
                .font(Font.custom("RobotoMono-Bold", size: 20))
                .kerning(-0.64)
                .frame(width: 365, height: 48, alignment: .center)
                .background(switchColors(color: presentation.bannerName))
                .border(Color.black, width: 4)
                //.offset(y: 0)
            VStack(alignment: .leading, spacing: 8) {
                
                Text(presentation.title)
                    .font(Font.custom("RobotoMono-Bold", size: 16))
                    .kerning(-0.64)
                    
                Text(names)
                    .font(Font.custom("Inter-Regular", size: 12))
                    .foregroundColor(.gray)
                //Spacer()
            }
            .padding(.vertical, 4)
            .padding(.horizontal, 8)

                //.padding(.top, 20)
            Spacer()
        }
            .frame(width: 365, height: 202)
            //.border(width: 25, edges: [.top], color: switchColors(color: presentation.bannerName))
            .border(Color.black, width: 4)
        
    }
}

struct SpeakerDetailPresentationView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerDetailPresentationView(presentation: DataFile.shared.presentationsData[2])
    }
}
