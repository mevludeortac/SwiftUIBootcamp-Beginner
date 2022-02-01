//
//  ConditionalStatementsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 1.02.2022.
//

import SwiftUI

struct ConditionalStatementsofBootcamp: View {
    
    @State var showCircle : Bool = false
    @State var showRectangle: Bool = false

    var body: some View {
            VStack {
                Button("circle button: \(showCircle.description)"){
                    //toggle is
                    //if we click it and it's true its going to the false
                    //if we click it and it's false its going to the true
                    showCircle.toggle()
                }
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                
                Button("rectangle button: \(showRectangle.description)"){
                    
                    showRectangle.toggle()
                }
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                
                
                //if we want  we dont use like that
                //we can use like that
                    // if showCircle {blalbalblabla}
                //the system will accept that like "true"
                //and if we want use "false"
                //we can use like that
                    // if !showCircle
                if showCircle{
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 100, height: 100)
                }
               /* else{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange)
                        .frame(width: 100, height: 100)
                }
     */
                 if showRectangle{
                   Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                }
                //    if we want to use or -->>> we should use this sign ||
                if showRectangle && showCircle {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.orange)
                        .frame(width: 100, height: 100)
                }
            }
            .background(Color.green)
            }
        }

struct ConditionalStatementsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatementsofBootcamp()
    }
}
