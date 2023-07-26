//
//  InfluencerCard.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct InfluencerCard: View {
    var influencer: Influencer
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("primary-color"))
                        .frame(height: 250)
                    CircleImage(image: influencer.image)
                        .offset(y: -100)
                        .padding(.bottom, -80)
                    Text(influencer.name)
                        .font(.system(size: 30))
                        .foregroundColor(Color("body-color"))
                        .bold()
                    Text(influencer.title)
                        .font(.system(size: 22))
                        .foregroundColor(Color("body-color"))
                        .offset(y: 5)
                    InfoView(icon: "envelope.fill", text: influencer.email, url:"mailto:\(influencer.email)")
                        .padding(.bottom, -20)
                    InfoView(icon: "phone.fill", text: influencer.phone, url:"tel:\(influencer.phone)")
                    MapView(coordinate: influencer.locationCoordinate)
                        .frame(height: 250)
                        .padding(.all)
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct InfluencerCard_Previews: PreviewProvider {
    static var previews: some View {
        InfluencerCard(influencer: influencers[0])
    }
}
