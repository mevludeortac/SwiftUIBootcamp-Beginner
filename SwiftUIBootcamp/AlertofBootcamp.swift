//
//  AlertofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 7.02.2022.
//

import SwiftUI

struct AlertofBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var bgColor : Color = Color.green
    @State var alertTitle : String = ""
    @State var alertMessage : String = ""
    @State var alertType : myAlertType?
    
    
    enum myAlertType{
        case error
        case success
    }
    
    var body: some View {
        ZStack {
            
            bgColor
                .ignoresSafeArea()
            VStack {
                Button("click 1 ") {
                    alertType = .error
                    //alertTitle = "Check Please!"
                    //alertMessage = "This is an error message. You must be to do control"
                    showAlert.toggle()
                }
                Button("click 1") {
                    alertType = .success
                    //alertTitle = "Check Please!"
                    //alertMessage = "Something playing wrong"
                    showAlert.toggle()
                }
            }
            .foregroundColor(Color.white)
            .alert(isPresented: $showAlert, content: {
                getAlert()
        })
            
        }
    }
    func getAlert()  -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("error"))
        case .success:
            return Alert(title: Text("success"), message: nil, dismissButton: .default(Text("OK"), action: {
                bgColor = .orange
            }))
        default:
            return Alert(title: Text("error"))
        }
        
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .destructive(Text("Ok")))
        
        
        
//      return  Alert(
//            title: Text("Check Please"),
//            message: Text("This is an error!"),
//            primaryButton: Alert.Button.destructive(Text("Change"), action: {
//                bgColor = .orange
//            }),
//            secondaryButton: Alert.Button.cancel())
//      //  Alert(title: Text("this is an error"))
    }
}

struct AlertofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertofBootcamp()
    }
}
