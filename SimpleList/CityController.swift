//
//  CityController.swift
//  SimpleList
//
//  Created by Luis Javier Carranza on 11/11/21.
//

import Foundation

class CityController: ObservableObject {
    
    @Published var cities: [CityModel]
    
    init() {
        
        cities = [
            CityModel(id: UUID(), name: "Qro", population: "2M", image: nil),
            CityModel(id: UUID(), name: "NYC", population: "8M", image: nil),
            CityModel(id: UUID(), name: "CDMX", population: "20M", image: nil)
        ]
    }
    
    func addCity(newCity: CityModel) {
        cities.append(newCity)
    }
    
}
