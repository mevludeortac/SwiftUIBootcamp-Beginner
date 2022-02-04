//
//  NavigationViewofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 4.02.2022.
//

import SwiftUI

struct NavigationViewofBootcamp: View {
    var body: some View {
        //you can not add a other navigation view
        NavigationView{
            ScrollView{
               NavigationLink("Hello, World!", destination: ourFirstDestination())
                Text("Hello, World!")
                Text("Hello, World!")
            }.font(.title)
            .navigationTitle("Our First Navigation")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                    Image(systemName: "heart.fill")

                }.foregroundColor(.pink),
                trailing: NavigationLink(
                    destination: ourFirstDestination(),
                    label: {
                        Image(systemName: "gear")
                    }).accentColor(.pink)
            )
        }
    }
}

struct ourFirstDestination: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack {
            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
                .ignoresSafeArea()
                .navigationTitle("second")
                .navigationBarHidden(true)
            VStack {
                Button("back") {
                    presentationMode.wrappedValue.dismiss()
                }
                Spacer()
                NavigationLink("click here", destination: Text("hi"))
                    .foregroundColor(.orange)
            }
        }
    }
}


struct NavigationViewofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewofBootcamp()
    }
}
