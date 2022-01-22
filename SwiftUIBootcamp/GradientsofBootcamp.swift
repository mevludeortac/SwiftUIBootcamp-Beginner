//
//  GradientsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 23.01.2022.
//

import SwiftUI

struct GradientsofBootcamp: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("CustomColor"), Color(#colorLiteral(red: 0.773148202, green: 0.5819603364, blue: 0.9686274529, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [Color("CustomColor"), Color(#colorLiteral(red: 0.773148202, green: 0.5819603364, blue: 0.9686274529, alpha: 1))]), center: .bottomLeading, startRadius: 15, endRadius: 100)
                )
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [Color("CustomColor"), Color(#colorLiteral(red: 0.773148202, green: 0.5819603364, blue: 0.9686274529, alpha: 1))]), center: .bottomTrailing, startRadius: 15, endRadius: 100)
                )
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [Color("CustomColor"), Color(#colorLiteral(red: 0.773148202, green: 0.5819603364, blue: 0.9686274529, alpha: 1))]), center: .leading )
                )
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [Color("CustomColor"), Color(#colorLiteral(red: 0.773148202, green: 0.5819603364, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))]), center: .center, angle: .degrees(180.0))
                )
                .frame(width: 200, height: 100)
        }
    }
}

struct GradientsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsofBootcamp()
    }
}
