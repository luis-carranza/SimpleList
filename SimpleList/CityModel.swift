//
//  CityModel.swift
//  SimpleList
//
//  Created by Luis Javier Carranza on 11/11/21.
//

import Foundation

    //    Model.       // Protocols
struct CityModel: Identifiable, Hashable {
    var id: UUID
    var name: String
    var population: String
    var image: String?
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
