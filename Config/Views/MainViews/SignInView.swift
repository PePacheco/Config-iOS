//
//  SignInView.swift
//  Config
//
//  Created by Matheus Homrich on 30/03/21.
//

import SwiftUI

struct SignInView: View {
    @State private var isShowingSheetTabBar: Bool = false
    @State private var isShowingSheetSign: Bool = false
    @State private var username = "example@icloud.com"
    @State private var password = "******************"
    @State private var name = "Matheus Homrich"
    @State var selectedDate = Date()
    @State private var isShowingSheetLogin = false
    
    var body: some View {
        
        VStack {
            
                Text("Let's be bezier friends.")
                    .font(Font.custom("Inter-Bold", size: 25))
                    .padding(.top, 10)
                    .foregroundColor(.black)
                    .padding(.bottom, 50)
                
                Image("matheushomrich")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
                    .frame(height: 130, alignment: .center)
                    .padding(.bottom, 14)
                
                Text("Change profile picture")
                    .font(Font.custom("Inter-SemiBold", size: 15))
                    .foregroundColor(Color("project-purple"))
                    .padding(.bottom, 20)
                
            VStack(alignment: .leading) {
                    
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Name")
                            .foregroundColor(.gray)
                            .font(Font.custom("Inter-SemiBold", size: 15))

                    }
                    
                    TextField("Matheus Homrich", text: $name)
                        .foregroundColor(Color.black)
                        .font(Font.custom("Inter-SemiBold", size: 17))
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 40)
                    
                    HStack {
                        Label("Birthday", systemImage: "calendar")
                            .foregroundColor(.gray)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                    }
                    
                    
                    DatePicker("", selection: $selectedDate, displayedComponents: .date)
                        .offset(x:-215)
                        .padding(.bottom, 40)
                        .accentColor(Color("project-purple"))
                    
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Email")
                            .foregroundColor(.gray)
                            .font(Font.custom("Inter-SemiBold", size: 15))

                    }
                    
                    TextField("example@icloud.com", text: $username)
                        .foregroundColor(Color.black)
                        .font(Font.custom("Inter-SemiBold", size: 17))
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.gray)
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
                            .foregroundColor(Color.black)
                            .font(Font.custom("Inter-SemiBold", size: 17))

                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                            .font(.body)
                        
                        Text("Show")
                            .foregroundColor(Color("project-purple"))
                            .offset(x:125, y:-38)
                            .font(Font.custom("Inter-SemiBold", size: 15))
                    }
                    
                }.padding(.horizontal, 50)
                .padding(.vertical)
                
                VStack {
                    
                    Button {
                        self.isShowingSheetTabBar = true
                    } label: {
                        Text("Register for the event")
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
                        self.isShowingSheetLogin = true
                    } label: {
                        Text("Already have an account? Login")
                            .font(Font.custom("Inter-SemiBold", size: 15))
                            .foregroundColor(Color("project-purple"))
                    }
                    .fullScreenCover(isPresented: $isShowingSheetLogin, content: {
                        LoginView()
                    })
                    
                }
        }
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
