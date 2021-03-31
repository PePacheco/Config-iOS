//
//  SignInView.swift
//  Config
//
//  Created by Matheus Homrich on 30/03/21.
//

import SwiftUI

struct SignInView: View {
    
    @State private var username = "example@icloud.com"
    @State private var password = "******************"
    @State private var name = "Matheus Homrich"
    @State var selectedDate = Date()
    @State private var isShowingSheetLogin = false
    
    var body: some View {
        VStack {
            
            VStack {
                
                Text("Let's be bezier friends.")
                    .font(Font.custom("Inter-Bold", size: 25))
                
                Image("matheushomrich")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
                    .frame(width: 200, height: 165, alignment: .center)
                
                Text("Change profile picture")
                    .font(.footnote)
                    .foregroundColor(.purple)
                
                Spacer()
                
            }.fixedSize()
            
            VStack {
                
                VStack(alignment: .leading) {
                
                    
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                        Text("Name")
                            .foregroundColor(.gray)
                        
                    }
                    
                    VStack {
                        TextField("Matheus Homrich", text: $name)
                            .foregroundColor(Color.black)
                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                    }
                    
                    HStack {
                        Image(systemName: "figure.stand")
                            .foregroundColor(.gray)
                        Text("Birthday")
                            .foregroundColor(.gray)
                        
                    }
                    
                    VStack {
                        DatePicker("", selection: $selectedDate, displayedComponents: .date)
                    }.offset(x: -170)
            
                    
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
                        
                        Text("Show")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .offset(x: 120, y: -40)
                    }
                    
                    
                }.padding(.horizontal, 50)
                .padding(.vertical)
                //.offset(y: 20)
                
                VStack {
                    
                    Text("Register for the event")
                        .frame(minWidth: 0, maxWidth: 250)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(10)
                        .font(.headline)
                    Button {
                        self.isShowingSheetLogin = true
                    } label: {
                        Text("Already have an account? Login")
                            .font(.footnote)
                            .foregroundColor(.purple)
                            .underline()
                    }
                    .fullScreenCover(isPresented: $isShowingSheetLogin, content: {
                        LoginView()
                    })

                }.offset(y: 65)
            }
        }
        .offset(y: -80)
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
