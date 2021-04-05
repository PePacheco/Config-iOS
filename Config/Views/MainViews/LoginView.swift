//
//  LoginView.swift
//  Config
//
//  Created by Matheus Homrich on 30/03/21.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State private var isShowingSheetTabBar: Bool = false
    @State private var isShowingSheetSign: Bool = false
    @State private var username = "example@icloud.com"
    @State private var password = "******************"
    
    var body: some View {
        VStack {
            Text("Welcome back!")
                .font(Font.custom("Inter-Bold", size: 30))
                .padding(.top, 10)
                .foregroundColor(Color("dynamic-color"))
                .padding(.bottom, 88)
            
            Image(colorScheme == .dark ? "Logo-Dark" : "Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 233.29, height: 80, alignment: .center)
                .padding(.bottom, 125)
            
            
            
            VStack {
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Email")
                            .foregroundColor(.gray)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                    }
                    VStack {
                        TextField("example@icloud.com", text: $username)
                            .foregroundColor(Color("dynamic-color"))
                            .font(Font.custom("Inter-SemiBold", size: 17))
                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.bottom, 40)
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Password")
                            .foregroundColor(.gray)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                    }
                    
                    VStack {
                        TextField("*************", text: $password)
                            .foregroundColor(Color("dynamic-color"))
                            .font(Font.custom("Inter-SemiBold", size: 17))

                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                        
                        Text("Show")
                            .foregroundColor(Color("project-purple"))
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .offset(x: 125, y: -38)
                    }
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 50)
                
                VStack {
                    
                    Button {
                        self.isShowingSheetTabBar = true
                    } label: {
                        Text("Login")
                            .frame(width: 314)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("project-purple"))
                            .cornerRadius(4)
                            .font(Font.custom("Inter-Bold", size: 20))
                    }
                    .fullScreenCover(isPresented: $isShowingSheetTabBar, content: {
                        TabBarView()
                    })
                    
                    Button {
                        self.isShowingSheetSign = true
                    } label: {
                        Text("Don't have an account? Sign up")
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color("project-purple"))
                    }
                    .fullScreenCover(isPresented: $isShowingSheetSign, content: {
                        SignInView()
                    })
                }
                .padding(.bottom, 20)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
