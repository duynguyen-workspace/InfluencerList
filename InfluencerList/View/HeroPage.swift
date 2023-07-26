//
//  HeroPage.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct HeroPage: View {
    var body: some View {
        VStack {
            BannerView(image: Image("success"), text: "Success")
            BannerView(image: Image("leadership"), text: "Leadership")
            BannerView(image: Image("rich"), text: "Rich")
            BannerView(image: Image("imagination"), text: "Imagination")
            
        }
    }
}

struct HeroPage_Previews: PreviewProvider {
    static var previews: some View {
        HeroPage()
    }
}
