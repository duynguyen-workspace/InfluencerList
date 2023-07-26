//
//  InfoView.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 25/07/2023.
//

import SwiftUI

struct InfoView: View {
    let icon: String
    let text: String
    let url: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("bg-color"))
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: icon)
                    .foregroundColor(Color("secondary-color"))
                Link(destination: URL(string: url)!) {
                    Text(text)
                        .foregroundColor(.white)
                        .bold()
                        .font(.custom("Roboto-Regular",size: 18))
                }
                Spacer()
            }
                .padding(.horizontal))
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(icon: "phone.fill",text: "0903452988", url: "mailto:email@gmail.com")
    }
}
