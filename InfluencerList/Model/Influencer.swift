//
//  Contact.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import Foundation
import SwiftUI

struct Influencer: Identifiable, Codable{
    var id: Int
    var name: String
    var title: String
    var email: String
    var phone: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
