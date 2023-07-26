//
//  ModelData.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import Foundation
import CoreLocation

var influencers = decodeJsonFromJsonFile(jsonFileName: "influencers.json")

// Decode a json file into a Struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Influencer] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Influencer].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Influencer]
}
