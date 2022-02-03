//
//  SheetsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 3.02.2022.
//

import SwiftUI

struct SheetsofBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
                .ignoresSafeArea()

                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("click")
                        .font(.largeTitle)
                        .foregroundColor(Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
                        .frame(width: 100, height: 70, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(25)
                })
                /*
                 .fullScreenCover(isPresented: $showSheet, content: {
                    SecondScreen()
                })
                 */
                .sheet(isPresented: $showSheet, content: {
                    //do not add conditional logic
                    //do not if else statements
                    SecondScreen()
                })
        }
    }
}

struct SecondScreen: View {
    
    @State var showSheet : Bool = false
    //we created for close to the screen
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
                .ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            },
                label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .cornerRadius(25)
                        .padding()

            })
            }
        }
    }


struct SheetsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsofBootcamp()
    }
}
