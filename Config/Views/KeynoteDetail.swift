//
//  KeynoteDetail.swift
//  Config
//
//  Created by Nicolas Godoy on 30/03/21.
//

import SwiftUI

struct KeynoteDetail: View {
    var presentation: Presentation
    
    var body: some View {
        ScrollView {
            SearchBar()
            
            Spacer()
            
            Text(presentation.title)
                // TODO: Ajustar fonte
                .font(.title)
                .bold()
            
            //Text(presentation.date)
            Text(presentation.description)
                .padding(.top, 20)
        }
        .padding(10)
        .navigationBarTitle("Keynote", displayMode: .inline)
        //.navigationTitle("Keynote")
    }
}

struct KeynoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        KeynoteDetail(presentation: DataFile.shared.presentationsData[0])
    }
}
