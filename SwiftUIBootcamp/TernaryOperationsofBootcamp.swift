//
//  TernaryOperationsofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 2.02.2022.
//

import SwiftUI

struct TernaryOperationsofBootcamp: View {
    
    @State var isStartingState : Bool = false
    
    var body: some View {
        VStack {
            Button("click \(isStartingState.description)") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "welcome" : "bye")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.green : Color.red)
                .frame(width: 160, height: 100)
            Spacer()
        }
        
    }
}

struct TernaryOperationsofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperationsofBootcamp()
    }
}
