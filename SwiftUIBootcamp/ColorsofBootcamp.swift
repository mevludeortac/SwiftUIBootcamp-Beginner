//
//  ColorsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 21.01.2022.
//

import SwiftUI

struct ColorsofBootcamp: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    //Color.pink)
                    Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                .frame(width: 250, height: 100)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    Color(UIColor.brown))
                .frame(width: 250, height: 100)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    Color("CustomColor"))
                .frame(width: 250, height: 100)
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
                .frame(width: 250, height: 100)
                .shadow(color: .blue, radius: 30, x: 0, y: 20)
                    }
        

        
    } 
}

struct ColorsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsofBootcamp()
            
            //.preferredColorScheme(.dark)
    }
}
