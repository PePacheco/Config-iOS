//
//  AccountView.swift
//  Config
//
//  Created by Anderson Sprenger on 01/04/21.
//

import SwiftUI

struct AccountView: View {
    @State private var username = "example@icloud.com"
    @State private var password = "******************"
    @State private var name = "Matheus Homrich"
    
    var body: some View {
        ScrollView {
            VStack{
                VStack (alignment: .center) {
                    Image("matheushomrich")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 4))
                        .frame(width: 200, height: 165, alignment: .center)
                    
                    Text(self.name)
                        .font(Font.custom("Inter-Regular", fixedSize: 17))
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                        Text("Age")
                            .foregroundColor(.gray)
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(height: 38, alignment: .bottom)
                            .foregroundColor(Color("account-bg"))
                        HStack {
                            Text("22")
                                .foregroundColor(Color.black)
                                .padding(.leading, 11)
                            Spacer()
                        }
                    }
                    
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)
                        Text("Email")
                            .foregroundColor(.gray)
                        
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(height: 38, alignment: .bottom)
                            .foregroundColor(Color("account-bg"))
                        TextField("example@icloud.com", text: $username)
                            .foregroundColor(Color.black)
                            .padding(.leading, 11)
                    }
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)
                        Text("Password")
                            .foregroundColor(.gray)
                        
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(height: 38, alignment: .bottom)
                            .foregroundColor(Color("account-bg"))
                        SecureField("*************", text: $password)
                            .foregroundColor(Color.black)
                            .padding(.leading, 11)
                    }
                    
                    HStack {
                        Image(systemName: "questionmark")
                            .foregroundColor(.gray)
                        Text("FAQ")
                            .foregroundColor(.gray)
                    }
                    .padding(.bottom, 1)
                    
                    VStack(alignment: .leading, spacing: 25) {
                        Text("How do I join the day of the event? \nConfig will be held on an online events platform called Hopin. As part of the registration process, you’ll create an account on Hopin and use that account to log into the event day of.")
                        
                        Text("Will Config be recorded? \nAll Config sessions will be recorded and shared with all event registrants one month after the event. You can subscribe to our YouTube channel at youtube.com/figmadesign.")
                        
                        Text("How do I RSVP for sessions? \nNo need to RSVP in advance. You’ll be able to choose your sessions day-of, there are no limits to attendees.")
                        
                        Text("What is Config? \nConfig is a Figma’s annual conference where users come together to learn from each other. This year, it’ll take place virtually over two days.")
                        
                        Text("What can I expect at Config? \nYou can expect a great lineup of speakers, opportunities to network with other attendees, space to ask your burning Figma questions, and to connect with people from around the world. We believe that everyone should have the equal opportunity to fully participate and will do our best to make our event accessible to all attendees. We will provide closed captioning wherever possible and will work with speakers to ensure presentations are accessible to attendees with vision impairment or low vision. For this specific event all content will be in English.")
                        
                        Text("What is expected of me? \nWe have a Code of Conduct that applies to all Figma community spaces, both online and off. We expect all Config attendees to adhere to the Code of Conduct before, during, and after the conference.")
                    }
                    .font(Font.custom("Inter-Regular", fixedSize: 17))
                    .multilineTextAlignment(.leading)
                }
            }
            .padding(.horizontal, 46)
            .padding(.vertical, 31)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
