//
//  SpeakerData.swift
//  Config
//
//  Created by Matheus Homrich on 29/03/21.
//

import Foundation

class DataFile {
    
    static let shared: DataFile = DataFile()
    
    var speakersData: [Speaker] = []
    var usersData: [User] = []
    var presentationsData: [Presentation] = []
    
    init() {
        
        // users
        
        let u1: User = User(id: 1, name: "Matheus Homrich", age: 21, email: "mattheushomrich@email.com", password: "123456", imageName: "matheushomrich")
        
        let u2: User = User(id: 2, name: "Bárbara Pinto", age: 21, email: "barbarapinto@email.com", password: "123456", imageName: "barbarapinto")
        
        let u3: User = User(id: 3, name: "Anderson Sprenger", age: 23, email: "andersonsprenger", password: "123456", imageName: "andersonsprenger")
        
        let u4: User = User(id: 4, name: "Pedro Pacheco", age: 23, email: "pedropacheco@email.com", password: "123456", imageName: "pedropacehco")
        
        let u5: User = User(id: 5, name: "Nicolas Godoy", age: 21, email: "nicolasgodoy@email.com", password: "123456", imageName: "nicolasgodoy")
        
        // presentations
        
        var p1: Presentation = Presentation(id: 1, title: "Unexpected places: Figma as a space for anything and everything", description: "Creating something from a blank file is magic. Ace wants to empower and excite people to use Figma for anything and everything by looking through five vignettes: five (Community) files, five practiced skills, five sets of challenges. Each story examines unique processes, constraints, goals, and lessons.", date: "1:00-1:40pm BRT", speakers: [], tag: Presentation.Tag.inTheFile, bannerName: "black", isMain: true)
        
        var p2: Presentation = Presentation(id: 2, title: "#FigmaandChill, a catalyst to connection, community, & culture", description: "In this talk we will share how BIPOC designers from around the world are leveraging emerging technologies to explore design through play, create dope art, and connect the global design community.", date: "1:50-2:20pm BRT", speakers: [], tag: Presentation.Tag.embracingTheMess, bannerName: "green", isMain: false)
        
        var p3: Presentation = Presentation(id: 3, title: "Building Sticker Sheets to scale design systems", description: "AThe aim of this talk is to demystify the process behind creating and organizing a design system from scratch, using our experience as product consultants for large companies.", date: "1:50-2:20pm BRT", speakers: [], tag: Presentation.Tag.inTheFile, bannerName: "yellow", isMain: false)
        
        var p4: Presentation = Presentation(id: 4, title: "Auditing design systems for accessibility", description: "In this session, learn how to audit components for accessibility issues from design to code using plugins, best practices, and testing tools. Walk away from this session empowered to make your design systems accessible sooner.", date: "2:30-3:00pm BRT", speakers: [], tag: Presentation.Tag.inTheFile, bannerName: "yellow", isMain: false)
        
        var p5: Presentation = Presentation(id: 5, title: "From relay to road trip: eliminating ego and fostering cross-discipline collaboration", description: "What if we viewed projects less as a baton pass between disciplines and more like a team road trip? The concept of road tripping envisions collaborators riding along together, switching drivers as the project progresses. While one discipline drives, the passengers stay engaged to support and contribute ideas. After all, what is a road trip without a trusty co-pilot to D.J., open snacks and help navigate along the journey?", date: "2:30-3:00pm BRT", speakers: [], tag: Presentation.Tag.shifting, bannerName: "purple", isMain: false)
        
        
        // speakers
        
        var s1: Speaker = Speaker(id: 1, name: "Ace Chen", description: "Ace is a creator making fun things for you and me! He likes to make people smile and bring joy into lives, both in and out of Figma.", role: "Creator of Figma Decal", imageName: "acechen", links: [("Figma profile", "https://www.figma.com/@ace")], presentations: [])
        
        var s2: Speaker = Speaker(id: 2, name: "Aubrie Phillips", description: "Aubrie Phillips is a Product Designer at WillowTree in Durham, NC and self-proclaimed Figma evangelist. She started her career at Microsoft, where she saw the power cross-discipline collaboration can have in elevating design processes. She is an artist of many kinds, amateur roller-skater and serial foster dog mom.", role: "Product Designer at WillowTree", imageName: "aubriephillips", links: [("linkedin","https://www.linkedin.com/in/aubrie-phillips")], presentations: [])
        
        var s3: Speaker = Speaker(id: 3, name: "Aladrian Goods", description: "Aladrian (uh-LAY-dree-an) is a Content Designer at Intuit who partners with designers across product and marketing teams to ensure content is clear, concise, and consistent throughout Intuit’s professional tax products. She holds a B.A. in Communication from UC Santa Barbara (Olé Gauchos!) and earned her UX Design Certification from CareerFoundry where she now tutors aspiring designer. If we weren’t in quarantine you could catch her enjoying concerts or eating ice cream at music festivals.", role: "Co-host of #FigmaandChill, Content Designer at Intuit" , imageName: "aladariangoods", links: [("Twitter","https://twitter.com/AladrianNo_L")], presentations: [])
        
        var s4: Speaker = Speaker(id: 4, name: "Angela Pinzon Garcia", description: "I’m a 31 years old, Bogota-based UX Designer with 11 years of experience. For me, design is present in everything we think and do, and I approach it by constantly generating ideas that in time will help solve problems. I passionately love design and everything around and related to it. I’ve always focused on the digital field and in fact I’m currently exerting as UX Designer. I’m passionate about creating digital products and understanding how users see the world and behave when prompted to a new interface or service. That array of insights is critical when creating outstanding digital pieces that are meant to have long-lasting, real-world applications.", role: "UX/UI Designer", imageName: "angelapinzon", links: [("Website","https://angelapg.com/")], presentations: [])
        
        var s5: Speaker = Speaker(id: 5, name: "Anna Cook", description: "Anna is a Senior Product Designer that specializes in building inclusive experiences. With over nine years of experience, Anna is dedicated to creating scalable systems to support accessible practices across product teams, from design to quality assurance. Anna is currently a Senior Product Designer at Recurly and an M.S. student in Creative Technology & Design at the ATLAS Institute of CU-Boulder.", role: "Senior Product Design and Accessibility Specialist at Recurly", imageName: "annacook", links: [("Twitter","https://twitter.com/annaecook")], presentations: [])
        
        
        usersData.append(u1)
        usersData.append(u2)
        usersData.append(u3)
        usersData.append(u4)
        usersData.append(u5)
        
        s1.presentations.append(p1)
        s2.presentations.append(p5)
        s3.presentations.append(p2)
        s4.presentations.append(p3)
        s5.presentations.append(p4)
        
        p1.speakers.append(s1)
        p2.speakers.append(s3)
        p5.speakers.append(s2)
        p3.speakers.append(s4)
        p4.speakers.append(s5)
        
        presentationsData.append(p1)
        presentationsData.append(p2)
        presentationsData.append(p3)
        presentationsData.append(p4)
        presentationsData.append(p5)
        
        speakersData.append(s1)
        speakersData.append(s2)
        speakersData.append(s3)
        speakersData.append(s4)
        speakersData.append(s5)
        
    }
}
