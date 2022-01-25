//
//  SpacerofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 25.01.2022.
//

import SwiftUI

struct SpacerofBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 80, height: 90)
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 80, height: 90)
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 80, height: 90)
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)

            }
            .background(Color.gray)
            .padding(.horizontal, 20)
            .background(Color.green)
            
            HStack(spacing: 0){
                Image(systemName: "heart")
                Spacer()
                    .frame(height: 10 )
                    .background(Color.black)
                
                Image(systemName: "gear")

            }.font(.title)
            .background(Color.pink)
            .padding(.horizontal)
            .background(Color.gray)
            Spacer()
                .frame(width: 10)
                .background(Color.black)
        }.background(Color.blue)
    }
}

struct SpacerofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerofBootcamp()
    }
}

