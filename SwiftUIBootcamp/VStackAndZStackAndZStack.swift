//
//  VStackAndZStackAndZStack.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 24.01.2022.
//

import SwiftUI

//VStack -> Vertical : dikey
//Hstack -> Horizontal : yatay
//ZStack -> zIndex = back to front : öne geçme
struct VStackAndZStackAndZStack: View {
    var body: some View {
        VStack{
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
                
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 90)
                .padding(0)
            
            //if we dont want to space we should use like that
            HStack(alignment: .center, spacing: 0, content: {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 70, height: 70)
                    .padding(0)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 70)
            })
            ZStack{
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 180, height: 150)
                    .padding(0)
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 150, height: 250)
                    .padding(0)
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 100, height: 150)
                    .padding(0)
            }
        }
    }
}

struct VStackAndZStackAndZStack_Previews: PreviewProvider {
    static var previews: some View {
        VStackAndZStackAndZStack()
    }
}
