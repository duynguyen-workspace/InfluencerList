//
//  CircleImage.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 25/07/2023.
//

import SwiftUI

struct CircleImage: View {
    let image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white),lineWidth: 4))
            .shadow(radius:7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("pham-nhat-vuong"))
    }
}
