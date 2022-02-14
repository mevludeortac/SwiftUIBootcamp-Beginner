//
//  PickerofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 13.02.2022.
//

import SwiftUI

struct PickerofBootcamp: View {
    @State var selection: String = "1"
    let filterOptions : [String] = ["most recent", "most popular", "most liked"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.green
        
        //for change to forecolor
//        let attribute: [NSAttributedString.Key: Any] = [
//            .foregroundColor : UIColor.white
//        ]
//
//        UISegmentedControl.appearance().setTitleTextAttributes(attribute, for: .selected)
    }
    
    var body: some View {
        VStack {
            HStack{
                Text("age")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(1..<100) { number  in
                        Text("\(number)")
                            .font(.title)
                            .foregroundColor(.black)
                            .tag("\(number)")
                    }

            })
                .pickerStyle(WheelPickerStyle())
            
            Picker(
                selection: $selection,
                label:
                    HStack {
                        Text("Filter")
                        Text(selection)
                    }.font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 70)
                    .background(Color.purple)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 10)
                ,
                content: {
                    ForEach(filterOptions, id: \.self) { option  in
                        HStack{
                            Text(option)
                            Image(systemName: "heart")
                        }
                        .tag(option)
                    }

        })
            .pickerStyle(MenuPickerStyle())
                .padding()
            
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(filterOptions.indices) { index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                    }
            }).pickerStyle(SegmentedPickerStyle())

        }
        Spacer()
    }
}

struct PickerofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerofBootcamp()
    }
}
