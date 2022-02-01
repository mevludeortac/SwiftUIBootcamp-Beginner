//
//  BindingofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 1.02.2022.
//


import SwiftUI

//A binding in SwiftUI is a connection between a value and a view that displays and changes it. You can create your own bindings with the @Binding property wrapper, and pass bindings into views that require them


struct BindingofBootcamp: View {
    
    @State var bgColor : Color = Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
    @State var title : String = "heyyy"
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()

            VStack {
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                ButtonView(bgColor: $bgColor, title:$title)
            }
            
        }
    }
}

struct BindingofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingofBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var bgColor : Color
    @Binding var title : String
    @State var buttonColor : Color = Color.white
    var body: some View {
        Button(action: {
            bgColor = Color(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1))
            buttonColor = .orange
            title = "its me"
        
        }, label: {
            Text("Button")
                .foregroundColor(.black)
                .font(.largeTitle)
                .frame(width: 130, height: 80)
                .background(buttonColor)
                .cornerRadius(10)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
        })
    }
}
