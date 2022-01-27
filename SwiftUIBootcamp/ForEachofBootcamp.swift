//
//  ForEachofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 27.01.2022.
//

import SwiftUI

struct ForEachofBootcamp: View {
    
    let data : [String] = ["Hi", "Hey", "Hello"]
    
    var body: some View {
        VStack {
            //the circle is sorted up the array element
            ForEach(0..<3) { index  in
                HStack(){
                    Circle()
                        .frame(width: 30, height: 30)
                        Text("hi to :\(index)" )
                }
            }
            
            Spacer()
                .frame(height: 50)
            
            //listing with first index
            VStack{
                ForEach(data.indices) { index in
                    Text("\(data[0]) : \(index)")
                }
            }
            
            Spacer()
                .frame(height: 50)
            
            //listing with 2.index
            VStack{
                ForEach(data.indices) { index in
                    Text("\(data[2]) : \(index)")
                }
            }
            
            Spacer()
                .frame(height: 50)
            
            //listing for all data
            VStack{
                ForEach(data.indices) { index in
                    Text("\(data[index]) : \(index)")
                }
            }
        }
    }
}

struct ForEachofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachofBootcamp()
    }
}
