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
                
                Image("matheushomrich")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
                    .frame(width: 200, height: 165, alignment: .center)
                
                Text("Change profile picture")
                    .font(.footnote)
                    .foregroundColor(.purple)
                
            VStack(alignment: .leading) {
                    
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Name")
                            .foregroundColor(.gray)
                            .font(.body)
                        
                    }
                    
                    TextField("Matheus Homrich", text: $name)
                        .foregroundColor(Color.black)
                        .font(.body)
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 40)
                    
                    HStack {
                        Label("Birthday", systemImage: "calendar")
                            .foregroundColor(.gray)
                            .font(.body)
                    }
                    
                    
                    DatePicker("", selection: $selectedDate, displayedComponents: .date)
                        .offset(x:-215)
                        .padding(.bottom, 40)
                    
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)
                            .font(.body)
                        Text("Email")
                            .foregroundColor(.gray)
                            .font(.body)
                        
                    }
                    
                    TextField("example@icloud.com", text: $username)
                        .foregroundColor(Color.black)
                        .font(.body)
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
                            .font(.body)
                        
                    }
                    
                    VStack {
                        TextField("*************", text: $password)
                            .foregroundColor(Color.black)
                            .font(.body)
                        
                        Rectangle()
                            .frame(height: 1.0, alignment: .bottom)
                            .foregroundColor(Color.gray)
                            .font(.body)
                        
                        Text("Show")
                            .foregroundColor(.purple)
                            .offset(x:125, y:-38)
                            .font(.body)
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
                            .background(Color.purple)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                    .fullScreenCover(isPresented: $isShowingSheetTabBar, content: {
                        TabBarView()
                    })
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
                    
                }
        }
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
