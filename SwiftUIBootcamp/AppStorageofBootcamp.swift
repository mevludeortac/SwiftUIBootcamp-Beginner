//
//  AppStorageofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 12.03.2022.
//

import SwiftUI

struct AppStorageofBootcamp: View {
    
    @AppStorage("name") var currentUsername: String?
    
    var body: some View {
        VStack(spacing:30){
            Text(currentUsername ?? "text smt here")
            if let name = currentUsername{
                Text(name)
            }
            Button("save"){
                let name: String = "ANIL"
                currentUsername = name
            }
        }
    }
}

struct AppStorageofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageofBootcamp()
    }
}
