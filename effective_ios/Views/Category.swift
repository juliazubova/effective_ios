//
//  Category.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct Category: View {
    let text: String
    let icon: String
    
    var body: some View {
        VStack (alignment: .center, spacing: Theme.Spacing.tiny) {
            ZStack {
                Rectangle()
                    .frame(width: Theme.Values.rectangleSize,
                           height: Theme.Values.rectangleSize)
                    .foregroundColor(Theme.Colors.whiteSearchBox)
                    .cornerRadius(Theme.Values.cornerRadius100)
                Image(icon)
                    .resizable()
                    .frame(width: Theme.Values.imgSize24,
                           height: Theme.Values.imgSize24)
            }
            .foregroundColor(Theme.Colors.blueCard)
            .onTapGesture {
                print("Category \(text)")
            }
            Text(text)
                .font(Theme.Fonts.poppins_15)
                .foregroundColor(Theme.Colors.greyHeaderText)
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(
            text: "Covid 19",
            icon: "sun"
        )
    }
}
