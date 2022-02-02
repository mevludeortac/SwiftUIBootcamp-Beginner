//
//  TransitionofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 3.02.2022.
//

import SwiftUI

struct TransitionofBootcamp: View {
    
     @State var showUs : Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("click") {
                    showUs.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            if showUs {
                RoundedRectangle(cornerRadius: 35)
                    .fill(Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
                    .frame( height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    //.transition(AnyTransition.scale.animation(.easeInOut))
                    //.transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))

                    .transition(.move(edge: .bottom))
                    .animation(.spring())
                    
            }
           
        }.edgesIgnoringSafeArea(.bottom)

    }
}

struct TransitionofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionofBootcamp()
    }
}
