//
//  AddCityView.swift
//  SimpleList
//
//  Created by Luis Javier Carranza on 11/11/21.
//

import SwiftUI

struct AddCityView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @ObservedObject var cityController: CityController
    
    @State var cityName: String = ""
    @State var population: String = ""
    
    
    var body: some View {
        VStack{
            Text("Please Add a new coutry with the population")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.bottom, 30)
            
            HStack{
                Image(systemName: "pencil.circle")
                    .foregroundColor(.gray)
                TextField("City", text: $cityName)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0))
            
            HStack{
                Image(systemName: "person.3")
                    .foregroundColor(.gray)
                TextField("Population", text: $population)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0))
            
            HStack {
                
                    //MARK: CANCEL BUTTON
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding(.all)
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(7.0)
                
                
                    //MARK: Submit BUTTON
                Button(action: {
                    cityController.addCity(newCity: CityModel(id: UUID(), name: cityName, population: population))
                    
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Add City")
                }
                .padding(.all)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(7.0)
            }
            .padding(.top, 20)
            
        }// VStack
        .padding(.horizontal, 10)
        .navigationBarTitle("Add a New City")
        .navigationBarBackButtonHidden(true)
        
    }
}

struct AddCityView_Previews: PreviewProvider {
    
    static var controller = CityController()
    
    static var previews: some View {
        AddCityView(cityController: controller)
    }
}

