//
//  ButtonsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 28.01.2022.
//

import SwiftUI

struct ButtonsofBootcamp: View {
    
    //We use State statement to make our variable be changed
    @State var title : String = "if you wanna go??? CLICK IT!!!"
    
    var body: some View {
        VStack {
            //1
           Text(title)
        Button("GO") {
                self.title = "button go was clicked"
        }.accentColor(.pink)
        .font(.largeTitle)
            .padding()
            
            //2
            Button(action: {
                self.title = "button come was clicked"
            }
            , label: {
                Text("COME")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(20)
                    .background(
                        Color.orange
                            .cornerRadius(10)
                            .shadow(radius: 10 )
                    )

            }).padding()
            //3
            Button(action: {
                self.title = "Button heart was clicked"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 85, height: 85, alignment: .center)
                    .shadow(color: .pink, radius: 10, x: 0.0, y: 0.0)
                    .overlay(
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                )
                
                
            }).padding()
            
            //4
            Button(action: {
                self.title = "button done was clicked"
            }, label: {
                Text("Done")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.blue, lineWidth: 3)
                        .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                    )
            })
        }
        
    }
}

struct ButtonsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsofBootcamp()
    }
}
