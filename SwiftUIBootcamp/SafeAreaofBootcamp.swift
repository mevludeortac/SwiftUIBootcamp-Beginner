//
//  SafeAreaofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 28.01.2022.
//


// Safe area is basically a pre-defined reference point for the top, bottom, left(leading) and right(trailing) within Xcode
import SwiftUI

struct SafeAreaofBootcamp: View {
    var body: some View {
        ZStack {
            //background
            Color.blue
            .edgesIgnoringSafeArea(.all)
                //.edgesIgnoringSafeArea(.bottom)
                //.edgesIgnoringSafeArea(.top)
            
            //foreground
            VStack {
                Text("Hello, World!")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    //Safearea and Foreground have made the same color and I added shadow to the Foreground to understand the difference
                    .shadow(radius: 10 )
            }
        }
            //foreground
            ScrollView{
                VStack {
                    Text("welcome!!!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(maxHeight: .infinity, alignment: .center)
                    ForEach(1..<11) { index in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(15)
                    }
                }
            }
            .background(
                Color.orange
                    //OLD TYPE, we will not use this anymore
                        //.edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea()
            )
    }
}

struct SafeAreaofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaofBootcamp()
    }
}
