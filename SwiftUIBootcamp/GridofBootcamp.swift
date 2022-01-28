//
//  GridofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 27.01.2022.
//

import SwiftUI

struct GridofBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),

    ]
    
    var body: some View {
       /* ScrollView{
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            LazyVGrid(columns: columns) {
                ForEach(0..<30) { index in
                    Rectangle()
                        .frame(height:150)
                }
            }
        }
        
    } */
        ScrollView{
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                        Section(header:
                                    Text("Section One")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.orange)
                                    .padding()
                        ){
                            ForEach(0..<12) { index in
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(height:150)
                            }
                        }
                        Section(header:
                                    Text("Section Two")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.orange)
                        ){
                            ForEach(0..<28) { index in
                                Rectangle()
                                    .fill(Color.gray)
                                    .frame(height:150)
                            }
                        }
            })
        }
}

struct GridofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridofBootcamp()
    }
}
}
