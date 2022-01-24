//
//  FramesAndAligmentsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 23.01.2022.
//

import SwiftUI

struct FramesAndAligmentsofBootcamp: View {
    var body: some View {
        VStack{
            
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.green)
                .frame(width: 300, height: 70, alignment: .topLeading)
                .background(Color.purple)
                .padding(5)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.purple)
                .frame(width: 300, height: 70, alignment: .center)
                .background(Color.green)
                .padding(5)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.green)
                .frame(width: 300, height: 70, alignment: .topTrailing)
                .background(Color.orange)
                .padding(5)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.purple)
                .frame(width: 300, height: 70, alignment: .bottomLeading)
                .background(Color.orange)
                .padding(5)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.orange)
                .frame(width: 300, height: 70, alignment: .bottomTrailing)
                .background(Color.purple)
                .padding(5)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.purple)
                .frame(width: 300, height: 70, alignment: .bottom)
                .background(Color.green)
                .padding(5)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.white)
                .frame(width: 300, height: 70, alignment: .leading)
                .background(Color.green)
                .padding()
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.white)
                .frame(width: 300, height: 70, alignment: .trailing)
                .background(Color.purple)
                .padding()
            
            Text("Hello, World!")
                .font(.largeTitle)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.orange)
                .padding()

        }
       
    }
}

struct FramesAndAligmentsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesAndAligmentsofBootcamp()
    }
}
