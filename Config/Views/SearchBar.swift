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
                    .foregroundColor(Color(UIColor.black))
                    .padding(.leading, 10)
                
                Text("Search")
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "mic.fill")
                    .foregroundColor(Color(UIColor.black))
                    .padding(.trailing, 10)
            }
                .frame(width: 385, height: 40)
                .background(Color(UIColor.lightGray))
                .opacity(0.5)
                .cornerRadius(15)
            
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
