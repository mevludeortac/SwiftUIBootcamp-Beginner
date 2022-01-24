//
//  BackgroundsAndOverlaysBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 23.01.2022.
//

import SwiftUI

struct BackgroundsAndOverlaysBootcamp: View {
    var body: some View {
        VStack{
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(Color.purple)
                .background(
                    Circle()
                        .fill(Color.orange)
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 200)
                ).background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.orange]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 240, height: 240)
                
                    )
            //overlay
            Circle()
                .fill(Color.pink)
                .frame(width: 200, height: 200, alignment: .center)
                .overlay(
                    Text("Hello World!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 240, height: 240, alignment: .center)
                )
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 200, alignment: .center)
                .overlay(
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 150, height: 150, alignment: .center)
                    )
                .background(
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 250, height: 250),
                    alignment: .center
                        )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [ Color.blue, Color.purple]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 80, height: 80, alignment: .center)
                        .shadow(color: .black, radius: 20, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.white)
                                .frame(width: 30, height: 30)
                                .overlay(
                                    Text("6")
                                    )
                            , alignment: .bottomTrailing)
                )
        }
    }
}

struct BackgroundsAndOverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundsAndOverlaysBootcamp()
        }
    }
}
