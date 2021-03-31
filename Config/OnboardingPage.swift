//
//  OnboardingPage.swift
//  Config
//
//  Created by Bárbara da Silva Pinto on 31/03/21.
//

import SwiftUI

struct OnboardingPage: View {
    
    var body: some View {
        
        ScrollView {
            TabView {
                OnboardingView()
                Onboarding2View()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle())
        }
                
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            UIScrollView.appearance().bounces = false
        })
        .onDisappear(perform: {
            UIScrollView.appearance().bounces = true
        })
        
    }
    
    struct OnboardingPage_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingPage()
        }
    }
}

//Onboarding()
//Onboarding2()
