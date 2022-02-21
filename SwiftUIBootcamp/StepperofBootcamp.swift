//
//  StepperofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 22.02.2022.
//

import SwiftUI

struct StepperofBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper\(stepperValue)", value: $stepperValue)
                .padding(25)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2 ") {
                //increment
                widthIncrement(amount: 10)
            } onDecrement: {
                //decrement
                widthIncrement(amount: -10)
            }

        }
            }
    func widthIncrement(amount: CGFloat){
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperofBootcamp()
    }
}
