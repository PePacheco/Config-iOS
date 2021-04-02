//
//  LoginView.swift
//  Config
//
//  Created by Matheus Homrich on 30/03/21.
//

import SwiftUI

struct LoginView: View {
    @State private var isShowingSheetTabBar: Bool = false
    @State private var isShowingSheetSign: Bool = false
    @State private var username = "example@icloud.com"
    @State private var password = "******************"
    
    var body: some View {
        VStack {
            Text("Let's be bezier friends.")
                .font(Font.custom("Inter-Bold", size: 25))
                .padding(.top, 10)
                .foregroundColor(.black)
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 150, alignment: .center)
            
            Spacer()
            
            VStack {
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Email")
                            .foregroundColor(.gray)
                            .font(.body)
                    }
                    VStack {
                        TextField("example@icloud.com", text: $username)
                            .foregroundColor(Color.black)
                            .font(.body)
                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                    }
                    .padding(.bottom, 25)
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Password")
                            .foregroundColor(.gray)
                            .font(.body)
                        
                    }
                    VStack {
                        TextField("*************", text: $password)
                            .foregroundColor(Color.black)
                            .font(.body)
                        
                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                        
                        Text("Show")
                            .foregroundColor(.blue)
                            .font(.body)
                            .offset(x: 125, y: -38)
                    }
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 50)
                .padding(.top, 100)
                
                VStack {
                    
                    Button {
                        self.isShowingSheetTabBar = true
                    } label: {
                        Text("Login")
                            .frame(minWidth: 0, maxWidth: 250)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                    .fullScreenCover(isPresented: $isShowingSheetTabBar, content: {
                        TabBarView()
                    })
                    
                    Button {
                        self.isShowingSheetSign = true
                    } label: {
                        Text("Don't have an account? Sign up")
                            .font(.footnote)
                            .foregroundColor(.purple)
                            .underline()
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
