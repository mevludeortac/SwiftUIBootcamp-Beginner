//
//  ScrollViewofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 27.01.2022.
//

import SwiftUI

struct ScrollViewofBootcamp: View {
    var body: some View {
        ScrollView{
            //LazyVStack : sadece ihtiyacımız olan kadarını hafızada tutmaya yarar
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack {
                                    ForEach(0..<20) { index in
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame( width: 200, height: 150)
                                            .shadow(radius: 5 )
                                            .padding()
                                    }
                                    
                                }
                    })
                    
                }
            }
        }
    }
}


struct ScrollViewofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewofBootcamp()
    }
}
