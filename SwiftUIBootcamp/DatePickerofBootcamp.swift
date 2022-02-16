//
//  DatePickerofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 16.02.2022.
//

import SwiftUI

struct DatePickerofBootcamp: View {
    
    @State var selectedDate : Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2002)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView {
            VStack{
                VStack { //we need to date formatter
                    Text("selected a date")
                    //Text(date.description)
                    Text(dateFormatter.string(from: selectedDate))
                }
                .font(.title)

                //1
                DatePicker("select a date", selection: $selectedDate)
                    .accentColor(.orange)
                    .padding()
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding(30)
                
                //compact the default
                DatePicker("select a date", selection: $selectedDate)
                    .accentColor(.orange)
                    .padding()
                    .datePickerStyle(CompactDatePickerStyle())
                    .padding(30)
                DatePicker("select a date", selection: $selectedDate)
                    .accentColor(.orange)
                    .padding()
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding(30)
                //2
                DatePicker("select a date", selection: $selectedDate, displayedComponents: [.date])
                    .accentColor(.orange)
                    .padding()
                    .padding(30)
                
                DatePicker("select a date", selection: $selectedDate, displayedComponents: [.hourAndMinute])
                    .accentColor(.orange)
                    .padding()
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding(30)
                
                //3
                DatePicker("select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                    .accentColor(.orange)
                    .padding()
                    .padding(30)
            }
        }
        
    }
}

struct DatePickerofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerofBootcamp()
    }
}
