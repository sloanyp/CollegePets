//
//  CollegePetsLoader.swift
//  College Pets
//
//  Created by Sloan Pardo on 12/10/22.
//

import Foundation
class CollegePetsLoader {
    class func load(jsonFileName: String) -> CollegePets? {
        var collegePets: CollegePets?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl){
            collegePets = try? jsonDecoder.decode(CollegePets.self, from: jsonData)
        }
        return collegePets
    }
}
