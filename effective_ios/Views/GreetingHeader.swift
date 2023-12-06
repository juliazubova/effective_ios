//
//  GreetingHeader.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//


import SwiftUI

struct GreetingHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello,")
                    .font(Theme.Fonts.poppins_16)
                    .foregroundColor(Theme.Colors.greyHeaderText)
                Text("Hi, James")
                    .font(Theme.Fonts.poppins_bold_20)
                    .foregroundColor(Theme.Colors.blackHeaderText)
            }
            Spacer()
            Image("logo").frame(width: 56, height: 56)
        }.frame(width: 327, alignment: .center)
    }
}

struct GreetingHeader_Previews: PreviewProvider {
    static var previews: some View {
        GreetingHeader()
    }
}
