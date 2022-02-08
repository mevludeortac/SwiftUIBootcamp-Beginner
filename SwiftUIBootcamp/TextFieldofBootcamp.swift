//
//  TextFieldofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 9.02.2022.
//

import SwiftUI

struct TextFieldofBootcamp: View {
    
    @State var textFieldText : String = ""
    @State var dataArray : [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("text smth here....", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.purple
                                    .opacity(0.4)
                                    .cornerRadius(15))
                    .foregroundColor(.pink)
                    .font(.headline)
                
                Button(action: {
                    if TextisApropriate(){
                        Save()
                    }
                }, label: {
                    Text("save")
                        .padding()
                        .frame( maxWidth: .infinity)
                        .background(TextisApropriate() ? Color.green : Color.pink)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .font(.headline)
                }).disabled(!TextisApropriate())
                
                TextField("text smth here....", text: $textFieldText)
                    .textFieldStyle(PlainTextFieldStyle())
                TextField("text smth here....", text: $textFieldText)
                    .textFieldStyle(DefaultTextFieldStyle())
                    
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding(20)
            .navigationTitle("Abt. TextField")
        }
    }
    func TextisApropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    func Save(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldofBootcamp()
    }
}
