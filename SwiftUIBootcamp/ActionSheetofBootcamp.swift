//
//  ActionSheetofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 8.02.2022.
//

import SwiftUI

struct ActionSheetofBootcamp: View {
    
    @State var showActionSheet : Bool = false
    @State var actionSheetOption : ActionSheetOptions = .isMyPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
        
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                })
            }.padding(.horizontal)
            Rectangle()
                .aspectRatio(contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content:
            getActionSheet)
    }
    func getActionSheet() -> ActionSheet {
    
        
        let  hideButton: ActionSheet.Button = .default(Text("hide")){
            // hide code
        }
        let  blockButton: ActionSheet.Button = .destructive(Text("block")){
            // block code
        }
        let  deleteButton: ActionSheet.Button = .destructive(Text("delete")){
            // block code
        }
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("what would you like to do")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [hideButton, deleteButton, cancelButton])
            
        case .isOtherPost:
            return ActionSheet(title: title , message: nil, buttons: [hideButton, blockButton, cancelButton])
        }
        
    
//        let button1 : ActionSheet.Button = .default(Text("hide"))
//        let button2 : ActionSheet.Button = .destructive(Text("block"))
//        let button3 : ActionSheet.Button = .cancel()
//
//
//       // return ActionSheet(title: Text("kapa şimdi"))
//        return ActionSheet(title: Text("error"),
//                           message: Text("just close"),
//                           buttons: [button1,button2,button3])
    }
}

struct ActionSheetofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetofBootcamp()
    }
}
