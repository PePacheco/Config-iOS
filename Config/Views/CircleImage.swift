//
//  CircleImage.swift
//  Config
//
//  Created by Anderson Sprenger on 30/03/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 125, alignment: .center)
            image
                .resizable()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("jose-tapioca"))
    }
}
