//
//  ContextMenuofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 8.02.2022.
//

import SwiftUI

struct ContextMenuofBootcamp: View {
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
        .frame(width: 200, height: 150)
        .background(Color.orange)
        .cornerRadius(20)
        .contextMenu(ContextMenu(menuItems: {
            /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
        }))
        
    }
}

struct ContextMenuofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuofBootcamp()
    }
}
