//
//  OnAppearofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 4.03.2022.
//

import SwiftUI

struct OnAppearofBootcamp: View {
    
    @State var ourText : String = "start text"
    @State var ourColor : Color = .black
    @State var count : Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(ourText)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 15)
                            .frame( height: 100)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }.foregroundColor(ourColor)
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    ourText = "stop text"
                    ourColor = .green
                }
                
            })
            .onDisappear(perform: {
                    ourText = "stopped text"
                    ourColor = .red
                })
            .navigationTitle("OnAppear: \(count)")
        }
    }
}

struct OnAppearofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearofBootcamp()
    }
}
