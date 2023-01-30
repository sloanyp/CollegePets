//
//  ContentView.swift
//  College Pets
//
//  Created by Sloan Pardo on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var collegePets: CollegePets?
    
    let jsonFileName = "college_pets"
    init(){
       
       
        self.collegePets = CollegePetsLoader.load(jsonFileName: jsonFileName)
        
    }
    var body: some View {
        if let collegePets = self.collegePets{
            NavigationView{
                List{
                    
                    ForEach(collegePets.pets) {pet in
                        NavigationLink(destination: detailsView(pet:pet)){
                            VStack(alignment: .leading){
                                HStack{
                                    Image(pet.classification.rawValue)
                                    VStack(alignment: .leading){
                                        Text(pet.name)
                                            .fontWeight(.black)
                                            .foregroundColor(Color.red)
                                        Text(pet.positive)
                                        
                                    }
                                }
                            }
                        }
                    }
                }.navigationTitle("Pets For College Dorms")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
