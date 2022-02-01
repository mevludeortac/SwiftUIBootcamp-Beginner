//
//  ShapesofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 20.01.2022.
//

import SwiftUI

struct ShapesofBootcamp: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.purple)
            //.foregroundColor(.blue)

            Circle()
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [30]))

            Circle()
                //.stroke()
                //.stroke(Color.blue)
                .trim(from: 0.31, to: 1.0)
                .stroke(Color.green, lineWidth: 5)
        }
        VStack{
            Ellipse()
                .foregroundColor(.pink)
                .frame(width: 150, height: 230, alignment: .center)
            Capsule(style: .continuous)
                .fill(Color.orange)
                .frame(width: 150, height: 100)
            Capsule(style: .circular)
                .fill(Color.gray)
                .frame(width: 150, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 100)
            RoundedRectangle(cornerRadius: 15.0)
                .frame(width: 150, height: 100)
        }
    }
}

struct ShapesofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ShapesofBootcamp()
        }
    }
}
