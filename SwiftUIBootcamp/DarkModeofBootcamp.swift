//
//  DarkModeofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 26.02.2022.
//

import SwiftUI

struct DarkModeofBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("this color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("this color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("this color is BLACK")
                        .foregroundColor(.black)
                    Text("this color is WHITE")
                        .foregroundColor(.white)
                    Text("this color is RED")
                        .foregroundColor(.red)
                    Text("this color is Adaptive Color")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("this color is Multiply Adaptive Color")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)

                }
            }.navigationTitle("Dark Mode")
        }
    }
}

struct DarkModeofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group  {
            DarkModeofBootcamp()
                .preferredColorScheme(.light)
            DarkModeofBootcamp()
                .preferredColorScheme(.dark)

        }
    }
}
