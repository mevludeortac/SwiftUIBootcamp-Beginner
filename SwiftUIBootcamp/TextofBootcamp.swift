//
//  TextofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 20.01.2022.
//

import SwiftUI

struct TextofBootcamp: View {
    var body: some View {
        VStack{
            //advantage: Resizable by system settings
            Text("Hello, Text of Bootcamp!")
                .font(.body)
                .italic()
                .fontWeight(.semibold)
                .foregroundColor(Color.orange)
                .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.purple)
                .strikethrough(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.black)
                .padding()
            
            //disadvantage: is not automatically sized
            //advantage: cannot resizable by system settings
            
            Text("Hello, System Text of Bootcamp! Let's do this")
                .font(.system(size: 24, weight: .semibold, design: Font.Design.serif))
                //We add a row gap and sizes
                .baselineOffset(10)
                .kerning(5.0)
                .multilineTextAlignment(.center)
                .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                // we can limit  this way If our text does'nt fit in the frame
                .minimumScaleFactor(1.0)
        }
    }
}

struct TextofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextofBootcamp()
    }
}
