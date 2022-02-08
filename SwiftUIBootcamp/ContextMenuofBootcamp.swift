//
//  ContextMenuofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 8.02.2022.
//

import SwiftUI

struct ContextMenuofBootcamp: View {
    
    @State var bgColor: Color = Color.orange
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6.0) {
            Image(systemName: "house.fill")
            Text("Hello, World!")
                .font(.headline)
            Text("Hello, World!")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(20)
        .frame(width: 200, height: 110)
        .background(bgColor)
        .cornerRadius(20)
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                bgColor = .green
            }, label: {
                Text("change to green")
            })
            Button(action: {
                bgColor = .red
            }, label: {
                Text("change to red")
            })
            Button(action: {
                bgColor = .purple
            }, label: {
                Text("change to purple")
            })
        }))
        
    }
}

struct ContextMenuofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuofBootcamp()
    }
}
