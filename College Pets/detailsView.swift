//
//  detailsView.swift
//  College Pets
//
//  Created by Sloan Pardo on 12/10/22.
//

import SwiftUI

struct detailsView: View {
    let pet: CollegePet
    
    
    init(pet: CollegePet) {
        
        self.pet = pet
    }
    var body: some View {
        ScrollView{
            VStack{
                Text("Pets For a College Dorm")
                    .font(.title)
                    .fontWeight(.bold)
                
                Image("animalLover")
                Text(pet.name)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
               
                
                VStack(alignment: .leading){
                    HStack{
                        Image(pet.classification.rawValue)
                        VStack(alignment: .leading){
                            Text("Positives:")
                                .fontWeight(.bold)
                            Text(pet.positive)
                        }
                    }
                    HStack{
                        Image(pet.classification.rawValue)
                        VStack(alignment: .leading){
                            Text("Negatives:")
                                .fontWeight(.bold)
                            Text(pet.negative)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct detailsView_Previews: PreviewProvider {
    static var previews: some View {
        detailsView(pet: CollegePet(classification: Classification(rawValue: "fish")!, name: "Tetras", negative: "These should be kept in a school of 5 or more.",positive: "Brighten up a living area."))
    }
}
