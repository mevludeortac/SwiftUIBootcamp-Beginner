//
//  TextEditorofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 12.02.2022.
//

import SwiftUI

struct TextEditorofBootcamp: View {
    
    @State var textEditorText: String = "heeeeyy"
    @State var savedText : String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .font(.title)
                    .frame(height: 400)
                    .colorMultiply(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                   // .background(Color.gray)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 15)
                    .padding()
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.orange)
                        .frame(width: 150, height: 50)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 15)
                })
                Spacer()
                Text(savedText)
            }
            .padding()
            .navigationTitle("Text Editor")
        }
    }
}

struct TextEditorofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorofBootcamp()
    }
}
