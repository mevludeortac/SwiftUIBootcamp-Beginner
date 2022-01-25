//
//  PaddingofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 24.01.2022.
//

import SwiftUI

struct PaddingofBootcamp: View {
    var body: some View {
        VStack(spacing: 10, content: {
                Text("Hello, World!")
                    .background(Color.green)
                    .padding()
                    .background(Color.yellow)
                Text("Hello, World!")
                    .background(Color.yellow)
                    .padding(25)
                    .background(Color.green)
                Text("Hello, World!")
                    .background(Color.purple)
                    .padding(.all, 10)                .background(Color.orange                     .shadow(color: .black, radius: 20, x: 0, y: 15))
                Text("Hello, World!")
                    .background(Color.orange)
                    .padding(.bottom, 10)                .background(Color.purple)
                Text("Hello, World!")
                    .background(Color.orange)
                    .padding(.top,10)                .background(Color.purple)
                Text("Hello, World!")
                    .background(Color.orange)
                    .padding(.leading, 10)                .background(Color.purple)
            Text("Hello, World!")
                .background(Color.orange)
                .padding(.vertical, 10)                .background(Color.purple)
            Text("Hello, World!")
                .background(Color.orange)
                .padding(.horizontal, 10)                .background(Color.purple)
            Text("Hello, World!")
                .background(Color.orange)
                .padding(.leading, 10)
                .padding(.trailing, 50)
                .background(Color.purple)
            Text("Hello, World!")
                .background(Color.orange)
                .padding(.leading, 10)
                .padding(.trailing, 50)
                .background(Color.purple)
            
        })
        
    }
}

struct PaddingofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingofBootcamp()
    }
}
