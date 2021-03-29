//
//  Onboarding.swift
//  Config
//
//  Created by Bárbara da Silva Pinto on 29/03/21.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        
        VStack{
            Text("Welcome!")
                
            Image("Logo")
                .resizable()
                .frame(width: 233.29, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("is a global design conference by Figma")
            
            Text("April 21–22 2021")
            Text("Online, 1pm–6pm BRT")
        }
    }
    
    struct Onboarding_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }
    
}
