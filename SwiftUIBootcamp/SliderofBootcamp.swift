//
//  SliderofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 23.02.2022.
//

import SwiftUI

struct SliderofBootcamp: View {
    
    @State var sliderValue : Double = 5
    @State var bgColor : Color = .purple
    var body: some View {
        VStack {
            Text("slider value")
            Text(
                //"\(sliderValue)"
                String(format: "%.2f", sliderValue)
            )
            //Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...5)
//                .accentColor(.orange)
//                .padding(30)
            Slider(value: $sliderValue, in: 0...10, step: 0.5)
                .accentColor(bgColor)
                .padding(30)
            Slider(
                value: $sliderValue,
                in: 1...10,
                step: 1.0,
                onEditingChanged: { (_) in
                    bgColor = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("10"),
                label: {Text("slide up")})
                .padding(20)
            
        }
    }
}

struct SliderofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderofBootcamp()
    }
}
