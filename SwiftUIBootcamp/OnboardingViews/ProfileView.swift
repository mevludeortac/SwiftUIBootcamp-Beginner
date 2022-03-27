//
//  ProfileView.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 27.03.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn : Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.purple)
                .frame(width: 200, height: 200)
            VStack{
                Text(currentUserName ?? "unknown")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("\(currentUserAge ?? 0)")
                    .font(.title)
                Text(currentUserGender ?? "unknown")
                    .font(.title)
                    .foregroundColor(.gray)
            }
            .frame(width: 300, height: 200)
            .background(Color.purple)
            .cornerRadius(15)
            .shadow(radius: 20)
            .padding()
            Text("sign out")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 150, height: 50)
                .background(Color.gray)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }.padding()
}
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()){
            currentUserSignedIn = false
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
