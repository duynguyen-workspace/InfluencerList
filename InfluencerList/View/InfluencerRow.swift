//
//  InfluencerRow.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct InfluencerRow: View {
    var influencer: Influencer
    
    var body: some View {
        HStack {
            influencer.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(influencer.name)
        }
    }
}

struct InfluencerRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfluencerRow(influencer: influencers[0])
                .previewLayout(.fixed(width: 300, height: 70))
            InfluencerRow(influencer: influencers[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
