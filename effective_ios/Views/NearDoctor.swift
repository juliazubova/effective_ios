//
//  NearDoctor.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct NearDoctor: View {
    let photo: String
    let name: String
    let speciality: String
    let rating: String
    let distance: String
    let time: String
    var body: some View {
        VStack (alignment: .center, spacing: Theme.Spacing.medium) {
            HStack (alignment: .center, spacing: Theme.Spacing.small) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: Theme.Values.imgDoctorSize,
                       height: Theme.Values.imgDoctorSize)
                .cornerRadius(Theme.Values.cornerRadius100)
                VStack (alignment: .leading, spacing: Theme.Spacing.tiny) {
                    Text(name)
                        .font(Theme.Fonts.poppins_bold_16)
                        .fontWeight(.bold)
                    Text(speciality)
                        .font(Theme.Fonts.poppins_12)
                        .foregroundColor(Theme.Colors.greyHeaderText)
                }
                Spacer()
                HStack (spacing: Theme.Spacing.tiny) {
                    Image("location")
                        .resizable()
                        .frame(width: Theme.Values.imgSize16,
                               height: Theme.Values.imgSize16)
                    Text(distance)
                        .font(Theme.Fonts.poppins_14)
                }.foregroundColor(Theme.Colors.greyHeaderText)
            }
            .padding(Theme.Padding.none)
            .frame(maxWidth: .infinity, alignment: .center)
            Divider().background(.white)
            HStack (alignment: .top, spacing: Theme.Spacing.huge) {
                HStack (spacing: Theme.Spacing.tiny) {
                    Image("clock-orange")
                        .resizable()
                        .frame(width: Theme.Values.imgSize16,
                               height: Theme.Values.imgSize16)
                    Text(rating)
                        .font(Theme.Fonts.poppins_12)
                }.foregroundColor(Theme.Colors.orange)
                HStack (spacing: Theme.Spacing.tiny) {
                    Image("clock-blue")
                        .resizable()
                        .frame(width: Theme.Values.imgSize16,
                               height: Theme.Values.imgSize16)
                    Text("open-at \(time)")
                        .font(Theme.Fonts.poppins_12)
                }.foregroundColor(Theme.Colors.blueCard)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(.horizontal, Theme.Padding.medium)
        .padding(.vertical, Theme.Padding.large)
        .background(.white)
        .cornerRadius(Theme.Values.imgCornerRadius)
        .shadow(color: Theme.Colors.shadow,
                radius: Theme.Values.shadowRadius, x: 2, y: 12)
    }
}
