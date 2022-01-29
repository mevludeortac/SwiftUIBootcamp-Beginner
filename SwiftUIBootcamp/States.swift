//
//  States.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 29.01.2022.
//

import SwiftUI

struct States: View {
    
    //var: can be change
    //let
    @State var backgroundColor: Color = .green
    @State var title: String = "it's green"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea()
            //foreground
            VStack(spacing:15){
                Text(title)
                    .font(.largeTitle)
                Text("count: \(count)")
                    .font(.largeTitle)
                    .underline()
                HStack(spacing:15){
                    Button("button1") {
                        self.title = "it's orange"
                        count += 1
                        backgroundColor = .orange
                    }.font(.largeTitle)
                    Button("button2") {
                        self.title = "it's purple"
                        count += 1
                        backgroundColor = .purple
                    }.font(.largeTitle)
                }
            }
            .foregroundColor(.white)

            
        }
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}
