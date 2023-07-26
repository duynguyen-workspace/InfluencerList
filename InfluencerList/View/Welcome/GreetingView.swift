//
//  GreetingView.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            Color("primary-color").ignoresSafeArea(.all, edges: .all)
            VStack {
                BannerView(image: Image("success"), text: "Success")
                BannerView(image: Image("leadership"), text: "Leadership")
                Spacer()
                BannerView(image: Image("rich"), text: "Rich")
                BannerView(image: Image("imagination"), text: "Imagination")
            }
            Button(action: {
                active = false
            }, label: {
                Capsule()
                    .fill(Color.white.opacity(0.5))
                    .padding(8)
                    .frame(height:80)
                    .overlay(Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white))
            })
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
