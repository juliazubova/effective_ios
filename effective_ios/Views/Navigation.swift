//
//  Navigation.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct Navigation: View {
    let selected: String
    
    var body: some View {
        HStack (alignment: .center, spacing: Theme.Spacing.small) {
            NavigationElement(category: "Home", selected: selected)
            NavigationElement(category: "calendar", selected: selected)
            NavigationElement(category: "message", selected: selected)
            NavigationElement(category: "profile", selected: selected)
        }
        .padding(.horizontal, Theme.Padding.huge)
        .padding(.vertical, Theme.Padding.medium)
        .frame(maxWidth: .infinity, alignment: .center)
        .foregroundColor(Theme.Colors.greyHeaderText)
        .background(.white)
    }
}

struct NavigationElement: View {
    let category: String
    let selected: String
    
    var body: some View {
        if (category == selected) {
            HStack (alignment: .center, spacing: Theme.Spacing.tiny) {
                Image(category)
                    .resizable()
                    .frame(width: Theme.Values.imgSize24,
                           height: Theme.Values.imgSize24)
                Text(category)
            }
            .padding(Theme.Values.navigationPadding)
            .frame(alignment: .center)
            .foregroundColor(Theme.Colors.navElement)
            .background(Theme.Colors.navElementBg.opacity(0.1))
            .cornerRadius(Theme.Values.imgCornerRadius)
            .onTapGesture {
                print("Viewing NavElement \(category)")
            }
        } else {
            HStack (alignment: .center, spacing: Theme.Spacing.tiny) {
                Image(category)
                    .resizable()
                    .frame(width: Theme.Values.imgSize24,
                           height: Theme.Values.imgSize24)
            }
            .padding(Theme.Values.navigationPadding)
            .frame(alignment: .center)
            .onTapGesture {
                print("NavElement \(category)")
            }
        }
    }
}
