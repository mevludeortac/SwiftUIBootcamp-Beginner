//
//  ImagesofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 23.01.2022.
//

import SwiftUI

struct ImagesofBootcamp: View {
    var body: some View {
        VStack{
            Image("yazgi")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 400)
                .cornerRadius(40)
            Image("yazgi")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 300)
                .cornerRadius(40)
                .clipShape(Circle())
        }
       
    }
}

struct ImagesofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesofBootcamp()
    }
}
