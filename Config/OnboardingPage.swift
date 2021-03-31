//
//  OnboardingPage.swift
//  Config
//
//  Created by Bárbara da Silva Pinto on 31/03/21.
//

import SwiftUI

struct OnboardingPage: View {
    var body: some View {
        
        
            
            TabView {
                
                Onboarding()
                Onboarding2()
            }
                
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
        .tabViewStyle(PageTabViewStyle())
            
        
        .edgesIgnoringSafeArea(.all)
        
    }
    
    
    struct OnboardingPage_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingPage()
        }
    }
}

//Onboarding()
//Onboarding2()
