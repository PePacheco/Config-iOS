//
//  Onboarding2View.swift
//  Config
//
//  Created by Bárbara da Silva Pinto on 31/03/21.
//
import SwiftUI

struct Onboarding2View: View {
    @State private var showSheet = false
    
    var body: some View {
        ZStack{
            Color.init(red: 0.627, green: 0.424, blue: 0.965)
                .ignoresSafeArea()
            
            Image("background2")
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("Explore, keynotes, speakers, agenda...")
                    .font(Font.custom("Inter-Bold", size: 32))
                    .padding(.bottom, 87)
                
                VStack {
                    Image("WelcomeStamp")
                        .resizable()
                        .frame(width: 316.03, height: 278, alignment: .center)
                }
                .padding(.bottom,120)
                
                VStack(alignment: .center) {
                    Text("and get ready for ")
                    Text("the event!")
                        .padding(.bottom, 60)
                }
                
                Button {
                    self.showSheet = true
                } label: {
                    Text("Let's go!")
                        .font(Font.custom("Inter-Bold", size: 20))
                        .padding(.horizontal,115)
                        .padding(.vertical, 14)
                        .background(Color.black)
                        .cornerRadius(4)
                        .foregroundColor(.white)
                }
                .fullScreenCover(isPresented: $showSheet, content: {
                    LoginView()
                })
            }
            .font(Font.custom("Inter-Medium", size:24))
            .foregroundColor(.white)
        }
    }
}
struct Onboarding2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
