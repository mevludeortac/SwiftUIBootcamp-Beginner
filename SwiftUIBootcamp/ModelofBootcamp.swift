//
//  ModelofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 7.03.2022.
//

import SwiftUI

struct UserModel: Identifiable{
    let id: String = UUID().uuidString //to randomly generate its own id
    let name: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelofBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(name: "herbin", username: "mevortac", followerCount: 200, isVerified: false),
        UserModel(name: "anıl", username: "aergon", followerCount: 700, isVerified: true)
    ]
    //@State var users : [String] = ["herbin", "anıl", "su", "can"]
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 30, height: 30)
                            .padding(.horizontal)
                        VStack {
                            Text(user.name)
                                .font(.title)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .foregroundColor(.gray)

                        }
                    }.padding(.vertical, 10)
                }
                
            }.listStyle(InsetGroupedListStyle())
            .navigationTitle("Model of Bootcamp")
        }
    }
}

struct ModelofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelofBootcamp()
    }
}
