//
//  IfLetGuardofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 5.03.2022.
//

import SwiftUI

struct IfLetGuardofBootcamp: View {
    
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    @State var currentUserID : String? = "123nvyb832yhb238"
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                //do not use ! ever
                // do not force unwrap values
//                    Text(displayText)
//                        .font(.title)

                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }.navigationTitle("Safe Coding")
            .onAppear{
                loadDataWGuard()
            }
            .padding(15)
        }
    }
    func loadData(){
        
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "this is the new data! User ID is \(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error! There is no user ID."
        }
    }
    
    func loadDataWGuard(){
        guard let userID = currentUserID else{
            displayText = "Error! There is no user ID."
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "this is the new data! User ID is \(userID)"
            isLoading = false
    }
}
}

struct IfLetGuardofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardofBootcamp()
    }
}
