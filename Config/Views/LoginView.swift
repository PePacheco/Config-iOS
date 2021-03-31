//
//  LoginView.swift
//  Config
//
//  Created by Matheus Homrich on 30/03/21.
//

import SwiftUI

struct LoginView: View {
    @State private var username = "example@icloud.com"
    @State private var password = "******************"
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                VStack () {
                    
                    
                    Text("Let's be bezier friends.")
                        .font(Font.custom("Inter-Bold", size: 25))
                        //.offset(y: -80)
                    
                    
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .center)
                        //.offset(y: -80)
                    Spacer()
                }.fixedSize()
                //.background(Color.red)
                
                
                VStack {
                    VStack (alignment: .leading){
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.gray)
                            Text("Email")
                                .foregroundColor(.gray)
                            
                        }
                        VStack {
                            TextField("example@icloud.com", text: $username)
                                .foregroundColor(Color.black)
                            Rectangle()
                                .frame(height: 1.0, alignment: .bottom)
                                .foregroundColor(Color.gray)
                        }
                        
                        .padding(.bottom, 25)
                        
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                            Text("Password")
                                .foregroundColor(.gray)
                            
                        }
                        VStack {
                            TextField("*************", text: $password)
                                .foregroundColor(Color.black)
                            Rectangle()
                                .frame(height: 1.0, alignment: .bottom)
                                .foregroundColor(Color.gray)
                        }
                        
                        Spacer()
                        
                    }.padding(.horizontal, 50)
                    .padding(.vertical)
                    
                    VStack {
                        
<<<<<<< HEAD
                        NavigationLink(destination: ScheduleView()) {
=======
                        NavigationLink(destination: TabBarView()) {
>>>>>>> 9b7d6bd04ddfae21531b882ccbafdad8cab85021
                            Text("Login")
                                .frame(minWidth: 0, maxWidth: 250)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.purple)
                                .cornerRadius(10)
                                .font(.headline)
                        }
                        NavigationLink(destination: SignInView()) {
                            Text("Don't have an account? Sign up")
                                .font(.footnote)
                                .foregroundColor(.purple)
                                .underline()
                        }
                    }.offset(y: 65)
                }
            }
            .offset(y: -80)
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
