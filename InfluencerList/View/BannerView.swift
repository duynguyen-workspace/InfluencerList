//
//  BannerView.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct BannerView: View {
    let image: Image
    let text: String
    var body: some View {
        image
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(height: 150)
            .padding([.horizontal, .bottom], 10)
            .overlay(
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .bold()
            )
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(image: Image("rich"), text: "Success")
    }
}
