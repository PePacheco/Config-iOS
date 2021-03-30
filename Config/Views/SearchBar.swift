//
//  SearchBar.swift
//  Config
//
//  Created by Pedro Gomes Rubbo Pacheco on 30/03/21.
//

import SwiftUI

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

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
