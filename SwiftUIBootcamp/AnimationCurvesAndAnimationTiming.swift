//
//  AnimationCurvesAndAnimationTiming.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 2.02.2022.
//

import SwiftUI

struct AnimationCurvesAndAnimationTiming: View {
    
    @State var  isAnimating : Bool = false
    let timing : Double = 2
    
    
    var body: some View {
        VStack {
            Button("click") {
                isAnimating.toggle()
            }
            .font(.largeTitle)
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.default)
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn(duration: timing))
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut(duration: timing))
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut(duration: timing))
        
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.linear(duration: timing))
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring()) //most useful
            RoundedRectangle(cornerRadius: isAnimating ? 100 : 25)
                .fill(isAnimating ? Color.blue : Color.red)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                            response: 2.0,
                            dampingFraction: 0.3,
                            blendDuration: 1.0))
            
        }
    }
}

struct AnimationCurvesAndAnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesAndAnimationTiming()
    }
}
