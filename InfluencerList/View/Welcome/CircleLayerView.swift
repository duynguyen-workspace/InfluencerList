//
//  CircleLayerView.swift
//  InfluencerList
//
//  Created by Nguyễn Anh Duy on 26/07/2023.
//

import SwiftUI

struct CircleLayerView: View {
    var body: some View {
        ZStack {
          Circle()
                .stroke(.white.opacity(0.4), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
          Circle()
            .stroke(.white.opacity(0.2), lineWidth: 90)
            .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CircleLayerView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLayerView()
    }
}
