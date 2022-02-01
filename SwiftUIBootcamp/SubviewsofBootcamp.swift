//
//  SubviewsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 30.01.2022.
//

import SwiftUI

struct SubviewsofBootcamp: View {
    var body: some View {
        ZStack {
            //background
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
                .ignoresSafeArea()
            
            //foreground
            contentLayer
        }
        .foregroundColor(.white)
    }
    var contentLayer: some View {
        
        HStack {
            MyOrangeArea(title: "It's orange", count: 1, color: .orange)
            MyOrangeArea(title: "It's yellow", count: 2, color: .yellow)
            MyOrangeArea(title: "It's green", count: 3, color: .green)
            MyOrangeArea(title: "It's pink", count: 4, color: .pink)
        }
    }
}

struct SubviewsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SubviewsofBootcamp()
        }
    }
}

struct MyOrangeArea: View {
    
    let title : String
    let count : Int
    let color : Color
    
    var body: some View {
        VStack{
            Text(title)
            Text("\(count)")
        }
        .font(.headline)
        .frame(width: 90, height: 100)
        .background(color)
        .cornerRadius(15)
        .shadow(color: .black, radius: 10, x:0.0, y: 0.0)
    }
}
