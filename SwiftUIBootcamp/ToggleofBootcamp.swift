//
//  ToggleofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 13.02.2022.
//

import SwiftUI

struct ToggleofBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status: ")
                Text(toggleIsOn ? "online" : "offline")
            }
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("change status")
                        .font(.title)
            })
                .toggleStyle(SwitchToggleStyle(tint: Color.purple))
                //.toggleStyle(DefaultToggleStyle())
                .padding()
            Spacer()
        }
        .padding(.horizontal, 70)
    }
}

struct ToggleofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleofBootcamp()
    }
}
