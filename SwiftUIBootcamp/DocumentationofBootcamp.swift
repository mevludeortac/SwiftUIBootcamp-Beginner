//
//  DocumentationofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 2.03.2022.
//

import SwiftUI

struct DocumentationofBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data : [String] = ["apple", "banana", "orange"]
    @State var showAlert : Bool = false
    
    
    // MARK: BODY
    
    //editor -> code folding -> fold
    //option+command+left arrow
    
    /*
         FOR MULTIPLE LINE
         BLA
         BLA
         BLA
         BLA
     */
    
    // FOR  ONE LINE IF YOU DONT  WANT TO DO COMPLICATE
    
    var body: some View {
        NavigationView { //START: NAV
            ZStack {
                //background
                Color.green.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                    .navigationTitle("Documentation Bootcamp")
                    .navigationBarItems(
                        trailing:
                                Button("alert",
                                       action: {
                                        showAlert.toggle()
                                            }
                                )
                )
            }
        } //END: NAV
        .alert(isPresented: $showAlert, content: {
            getAlert(text: "first alert")
        })
    }
    //use 3 backclash to add a summary
    ///This is the foreground layer that  holds a scrollview
    private var foregroundLayer: some View{
        ScrollView { // START: SCROLLV
            Text("Hello, World!")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } //END: SCROLLV
        
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with specified title
    ///
    /// This func creates and returns an alert immediately. The alert will have a title based on the text parameters but it will NOT have a message
    /// ```
    /// getAlert(ext: "hi") -> Alert(title:  Text: ("hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func  getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW
struct DocumentationofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationofBootcamp()
    }
}
