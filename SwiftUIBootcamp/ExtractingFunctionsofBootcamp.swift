//
//  ExtractingFunctionsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 30.01.2022.
//

import SwiftUI

struct ExtractingFunctionsofBootcamp: View {
     
    @State var backgroundColor : Color = Color.yellow
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            
            //call content layer
            contentLayer
        }
    }
    
    //content layer
    
    var contentLayer: some View {
        VStack {
            Text("Hello!")
                .font(.largeTitle)
                .padding()
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 130, height: 80)
                    .background(Color.black)
                    .cornerRadius(20)

            })
                
        }
    }
    
    func buttonPressed()  {
        backgroundColor = .pink
    }
}

struct ExtractingFunctionsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunctionsofBootcamp()
    }
}
