//
//  EnvironmentObjectofBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MEWO on 9.03.2022.
//

import SwiftUI


//ObservedObject
//StateObject
//EnvironmentObject : basically the same thing  as StateObject except
    //All objects can access in view

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray : [String] = []
    
    init(){
        getData()
    }
    func getData(){
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iPod", "iMac", "iWatch"])
    }
}

struct EnvironmentObjectofBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }.navigationTitle("iOS devices")
        }.environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem : String
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea()
            VStack{
                NavigationLink(
                    destination: FinalView(),
                    label: {
                        Text(selectedItem)
                            .foregroundColor(.orange)
                            .font(.largeTitle)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(30)
                    })
            }
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) ] ), startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }.foregroundColor(.white)
                .font(.title)
            }
        }
    }
}

struct EnvironmentObjectofBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectofBootcamp()
    }
}
