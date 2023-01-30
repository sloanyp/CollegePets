//
//  CollegePets.swift
//  College Pets
//
//  Created by Sloan Pardo on 12/10/22.
//

import Foundation
enum Classification: String, Codable {
    case bird
    case fish
    case mammal
    case reptile
    case crustacean
    
}



struct CollegePet: Codable, Identifiable {
    var id = UUID()
    var classification: Classification
    var name: String
    var negative: String
    var positive: String
    
    
    private enum CodingKeys: String, CodingKey {
        case classification, name, negative, positive
    }
}

struct CollegePets: Codable {
    var status: String
    var pets: [CollegePet]
}
