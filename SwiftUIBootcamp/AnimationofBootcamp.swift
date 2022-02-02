//
//  AnimationofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 2.02.2022.
//

import SwiftUI

struct AnimationofBootcamp: View {
    
    @State var isAnimaated: Bool = false
    
    var body: some View {
        VStack {
            Button("click") {
                
                //animation duration : animasyon süresi
                        //Animation.default.delay(2.0)
                    
                  /*  Animation
                        .default
                        .repeatCount(4, autoreverses: true)
                    //if we want dont stop we can use repeatForever
                 */
                
                isAnimaated.toggle()

            }
            .font(.largeTitle)
            .foregroundColor(.black)
            .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            Spacer()
            RoundedRectangle(cornerRadius: isAnimaated ? 150 : 25)
                .fill(isAnimaated ? Color.orange :  Color.purple)
                .frame(width: isAnimaated ? 100 : 300,
                       height: isAnimaated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimaated ? 360 : 0))
                .offset( y: isAnimaated ? 100 : 0)
                .animation(Animation
                            .default
                            .delay(0.2)
                            .repeatCount(4, autoreverses: true)
                           //if we want dont stop we can use repeatForever
                )
            Spacer()
        }
    }
}

struct AnimationofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationofBootcamp()
    }
}
