//
//  IconsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 23.01.2022.
//

import SwiftUI

struct IconsofBootcamp: View {
    var body: some View {
        VStack{
            Image(systemName: "heart")
                //frame ile boyutlandırmak istediğimizde sadece çerçevenin değil iconun da boyutlandırmak için kullanıyoruz
                .resizable()
                //iconumuzun çerçeveden taşmaması için
                //.aspectRatio(contentMode: .fit)

                .scaledToFit()
                //.font(.largeTitle)
                .font(.system(size: 50))
                .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.5709543417, blue: 0.8256072202, alpha: 1)))
                .frame(width: 70, height: 70)
            
            Image(systemName: "heart")
                //frame ile boyutlandırmak istediğimizde sadece çerçevenin değil iconun da boyutlandırmak için kullanıyoruz
                .resizable()
                //iconumuzun çerçeveden taşıyor
                .scaledToFill()
                //.font(.largeTitle)
                .font(.system(size: 50))
                .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.5709543417, blue: 0.8256072202, alpha: 1)))
                .frame(width: 70, height: 70)
                .clipped()
            
            Image(systemName: "person.fill.badge.plus")
                .font(.largeTitle)
                .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.5709543417, blue: 0.8256072202, alpha: 1)))
                .frame(width: 70, height: 70)
        }
        
    }
}

struct IconsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsofBootcamp()
    }
}
