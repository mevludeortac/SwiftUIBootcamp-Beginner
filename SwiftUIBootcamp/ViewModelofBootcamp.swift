//
//  ViewModelofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 7.03.2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}
//all logic in here is about data
class FruitViewModel: ObservableObject {
    
    //for example: If the fruit array changes informs that something changes in the model
    //so we should show that as a reference in view we will use it
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits(){
        let fruit1 = FruitModel(name: "bananas", count: 11)
        let fruit2 = FruitModel(name: "strawberry", count: 34)
        let fruit3 = FruitModel(name: "apples", count: 5)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    func deleteFruits(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}
//all logic in here is about updating to the view
struct ViewModelofBootcamp: View {
    //We reference this way
    @ObservedObject  var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List{
                
                if fruitViewModel.isLoading {
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitArray) {  fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .font(.headline)
                            Text(fruit.name)
                        }
                    }.onDelete(perform: fruitViewModel.deleteFruits)
                }
            }.listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .onAppear(){
                fruitViewModel.getFruits()
            }
        }
    }
}

struct ViewModelofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelofBootcamp()
    }
}
