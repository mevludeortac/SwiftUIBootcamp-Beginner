//
//  TabViewofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 25.02.2022.
//

import SwiftUI

struct TabViewofBootcamp: View {
    
    @State var selectedTab: Int = 0
    let icons: [String] = ["heart", "person", "house"]
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }.tag(0)
            
            Text("Browse Page")
                .tabItem {
                    Label("browse",
                    systemImage: "globe")
                }.tag(1)
            
            Text("Likes Page")
                .tabItem {
                    Label("likes",
                    systemImage: "heart")
                }.tag(2)
            
            Text("Profile Page")
                .tabItem {
                    Image(systemName: "person")
                    Text("profile")
                }.tag(3)
            
        }.accentColor(.pink)
        
        TabView{
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }.frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewofBootcamp()
        TabViewofBootcamp()

    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int

    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
                .ignoresSafeArea()
            
            VStack{
                Text("Home Page")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Button(action: {
                    selectedTab = 1
                }, label: {
                    Text("Back to Browse")
                        .font(.title)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: .black, radius: 15)
                })
            }
        }
    }
}
