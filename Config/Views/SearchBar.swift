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
                    .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("Search")
                    .foregroundColor(.black)
                Spacer()
            }
                .frame(width: 385, height: 50)
                .background(Color(UIColor.lightGray))
                .opacity(0.5)
                .cornerRadius(8)
            
            HStack(spacing: 14) {
                HStack(alignment: .center) {
                    Text(" Embracing the mess ")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                    .frame(width: 130, height: 30)
                    .background(Color(UIColor.green))
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 3))
                    
                HStack(alignment: .center) {
                    Text(" Shifting the culture ")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                    .frame(width: 130, height: 30)
                    .background(Color(UIColor.purple))
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 3))
                
                HStack(alignment: .center) {
                    Text("In the file")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                    .frame(width: 100, height: 30)
                    .background(Color(UIColor.yellow))
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 3))
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
