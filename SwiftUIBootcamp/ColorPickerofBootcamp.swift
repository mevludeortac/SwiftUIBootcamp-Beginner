//
//  ColorPickerofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 16.02.2022.
//

import SwiftUI

struct ColorPickerofBootcamp: View {
    
    @State var bgColor : Color = .white

    var body: some View {
                
        ZStack{
            Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
                .ignoresSafeArea()
            
            ColorPicker("select a color", selection: $bgColor, supportsOpacity: true)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(10)
                .padding(20)
        }
    }
}

struct ColorPickerofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerofBootcamp()
    }
}
