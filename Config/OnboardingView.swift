//
//  Onboarding.swift
//  Config
//
//  Created by Bárbara da Silva Pinto on 29/03/21.
//

import SwiftUI

struct Onboarding: View {
    
    var body: some View {
        
        ZStack{
            Color.init(red: 0.627, green: 0.424, blue: 0.965)
            .ignoresSafeArea()

            Image("background1")
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("Welcome!")
                    .font(Font.custom("Inter-Bold", size: 32))
                    .padding(.bottom, 180)

                VStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 233.29, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("is a global design")
                    Text("conference by Figma")
                }
                .padding(.bottom, 138)

                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 29) {
                    Text("April 21–22 2021")
                    Text("Online, 1pm–6pm BRT")
                }
            }
            .font(Font.custom("Inter-Medium", size:24))
            .foregroundColor(.white)
            .padding(.bottom, 121)
        }
        

    }
    
    struct Onboarding_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }
}

