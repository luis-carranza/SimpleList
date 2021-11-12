//
//  ContentView.swift
//  SimpleList
//
//  Created by Luis Javier Carranza on 04/11/21.
//

import SwiftUI

    
struct ContentView: View {
    
    @ObservedObject var cityController = CityController()

    // View
    var body: some View {
        NavigationView {
            List {
                ForEach(cityController.cities, id: \.self){ city in
                    
                    NavigationLink(
                        destination: DetailedView(city: city.name),
                                   label: {
                                       Text(city.name)
                                    }
                    )
                } // ForEach Cycle Ends
                .onDelete(perform: deleteItem)
            }// List
            .navigationBarTitle("Cities", displayMode: .inline)
            
            
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: AddCityView(cityController: cityController)
                    ){
                        Text("Add").foregroundColor(.blue)
                    }
                                    
            )
            
        }// NavigationView
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        cityController.cities.remove(atOffsets: indexSet)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
