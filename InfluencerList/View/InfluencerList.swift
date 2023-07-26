//
//  InfluencerList.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct InfluencerList: View {
    var body: some View {
        NavigationView {
            List(influencers){
                influencer in
                NavigationLink{
                    InfluencerCard(influencer: influencer)
                } label: {
                    InfluencerRow(influencer: influencer)
                }
                .navigationTitle("Top 20 Influencers 📒")
            }
        }
    }
}

struct InfluencerList_Previews: PreviewProvider {
    static var previews: some View {
        InfluencerList()
    }
}
