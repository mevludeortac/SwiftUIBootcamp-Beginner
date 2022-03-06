//
//  TabGestureofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 6.03.2022.
//

import SwiftUI

struct TabGestureofBootcamp: View {
    
    @State var isClicked: Bool = true
    
    var body: some View {
        VStack(spacing: 30){
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 300)
                .foregroundColor(isClicked ? Color.green : Color.red)
            
            Button(action: {
                isClicked.toggle()
            }, label: {
                Text("Button")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(25)
            })
            
            Text("Tap Gesture")
                .font(.title)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .cornerRadius(25)
                .onTapGesture {
                    isClicked.toggle()
                }
            
            Text("Double Tap Gesture")
                .font(.title)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .cornerRadius(25)
                .onTapGesture(count: 2, perform: {
                    isClicked.toggle()
                })
            
            HStack {
                Text("click status: ")
                Text(isClicked.description)
            }.padding(10)
            
            Spacer()
        }.padding(30)
    }
}

struct TabGestureofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureofBootcamp()
    }
}
