//
//  InitializerAndEnumBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 27.01.2022.
//

import SwiftUI

struct InitializerAndEnumBootcamp: View {
    //variable - değişken
        let backgroundColor : Color
        let count : Int
        let title : String

    init(count: Int, fruit : Fruit) {
        self.count = count
    
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        }
        else{
            self.title = "Grape"
            self.backgroundColor = .purple
        }
    }
    
    enum Fruit{
        case apple
        case grape
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
            Text(title)
                .font(.headline)
        }
        .foregroundColor(.white)
        .frame(width: 120, height: 80)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerAndEnumBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitializerAndEnumBootcamp(count: 5, fruit: .apple)
            InitializerAndEnumBootcamp(count: 7, fruit: .grape)
        }
    }
}
