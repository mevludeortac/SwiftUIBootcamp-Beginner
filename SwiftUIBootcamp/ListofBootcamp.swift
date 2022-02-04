//
//  ListofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 4.02.2022.
//

import SwiftUI

struct ListofBootcamp: View {
    @State var fruits : [String] = ["banana", "strawberry", "burberry", "apple"]
    @State var vegitables : [String] = ["patato", "cucumber", "onion", "tomato"]

    var body: some View {
        NavigationView {
            List{
                Section(header:
                            HStack {
                                Text("Fruits")
                                Image(systemName: "heart.fill")
                            }
                            .font(.headline)
                            .accentColor(.purple)){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                }
                Section(header:
                            HStack {
                                Text("Vegitables")
                                Image(systemName: "heart.fill")
                            }
                            .font(.headline)
                            .accentColor(.green)) {
                    ForEach(vegitables, id: \.self) { vegitable in
                        Text(vegitable.capitalized)
                            .padding(.vertical, 6)
                    }.onDelete(perform: deleteFruiteItem) //so useful for only our list
                    .onMove(perform: moveItems)
                    //.listRowBackground(Color.green)
                }
                
            }.accentColor(.red)
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                   
            )

        }
        .accentColor(.orange)
    }
    func deleteFruiteItem(indexSet: IndexSet)  {
        vegitables.remove(atOffsets: indexSet)
    }
    func moveItems(indices: IndexSet, newOffset: Int ){
        vegitables.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        vegitables.append("garlic")
    }
    var addButton: some View{
        Button("Add", action: {
            add()
        })
    }
}

struct ListofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListofBootcamp()
    }
}
