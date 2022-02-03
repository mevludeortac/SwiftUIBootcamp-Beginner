//
//  PopOverofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 3.02.2022.
//

//animations
//sheets
//transitions

import SwiftUI

struct PopOverofBootcamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack{
                Button("click") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 - SHEET
                 /* .sheet(isPresented: $showNewScreen, content: {
                    NewSheet()
                })
                 */
            //METHOD 2 - TRANSITION
                     /* ZStack{
                        if showNewScreen{
                            NewSheet(showNewScreen: $showNewScreen)
                                .padding(.top, 50)
                                .transition(.move(edge: .bottom))
                                .animation(.spring())
                        }
                    } .zIndex(2.0)
                */
            
            //METHOD 3 - ANIMATION OFFSET
            NewSheet(showNewScreen: $showNewScreen)
                .padding(.top, 70)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    var body: some View{
        ZStack(alignment: .topLeading) {
            Color.green
                .ignoresSafeArea()
            Button(action: {
               // presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }
                   , label: {
                Image(systemName: "xmark")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
}

struct PopOverofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
       PopOverofBootcamp()
    }
}
