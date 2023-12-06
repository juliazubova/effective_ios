//
//  SearchBox.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct SearchBox: View {
    var body: some View {
        HStack (alignment: .center,
                spacing: Theme.Spacing.small) {
            Image("search-normal")
                .resizable()
                .foregroundColor(Theme.Colors.greyHeaderText)
                .frame(
                    width: Theme.Values.imgSize24,
                    height: Theme.Values.imgSize24
                )
            Text("Search doctor or health issue")
                .font(Theme.Fonts.poppins_15)
                .foregroundColor(Theme.Colors.greyHeaderText)
        }
        .padding(Theme.Values.searchFieldPadding)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Theme.Colors.lightGreySearchBox)
        .cornerRadius(Theme.Values.imgCornerRadius)
        .onTapGesture {
            print("Search field")
        }
    }
}

struct SearchBox_Previews: PreviewProvider {
    static var previews: some View {
        SearchBox()
    }
}
