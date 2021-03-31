//
//  SearchBar.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 30/03/21.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        VStack (spacing: 10){
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
            HStack(spacing: 14) {
                Filter(color: UIColor.green, title: "Embrassing the mess", width: 140)
                Filter(color: UIColor.purple, title: "Shifting the culture", width: 130)
                Filter(color: UIColor.yellow, title: "In the file", width: 80)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
