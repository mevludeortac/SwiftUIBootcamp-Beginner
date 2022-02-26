//
//  SwiftUIView.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 25.02.2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var selectedTab : Int = 0
    var body: some View {
    
        TabView(selection:$selectedTab){
            HomePage()
               .tabItem {
                  Label("home",
                  systemImage: "house")
                        }
                .tag(0)
            Text("Browse Page")
                .tabItem {
                    Label("browse",
                    systemImage: "globe")
                }.tag(1)
            Text("Profile Page")
                .tabItem {
                    Image(systemName: "person")
                    Text("profile")
                }.tag(2)
        }
//        TabView{
//            HomePage()
//                .tabItem {
//                    Label("home",
//                          systemImage: "house")
//                }
//
//            Text("Browse Page")
//                .tabItem {
//                    Label("browse",
//                    systemImage: "globe")
//                }
//
//            Text("Likes Page")
//                .tabItem {
//                    Label("likes",
//                    systemImage: "heart")
//                }
//
//            Text("Profile Page")
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("profile")
//                }
//        }.accentColor(.pink)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

struct HomePage: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.all)
            VStack{
                Text("Home Page")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Button(action: {
                    
                }, label: {
                    Text("back to browse")
                        .foregroundColor(.red)
                        .font(.title)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(20)
                })
            }
            
        }
        
    }
}
