//
//  DoctorCard.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct MainDoctor: View {
    let name: String
    let speciality: String
    let date: String
    let time: String
    
    var body: some View {
            VStack (alignment: .center, spacing: Theme.Spacing.short) {
                HStack (alignment: .center, spacing: Theme.Spacing.small) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                        Image("doctor1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    .frame(width: Theme.Values.imgDoctorSize,
                           height: Theme.Values.imgDoctorSize)
                    .cornerRadius(Theme.Values.cornerRadius100)
                    VStack (alignment: .leading, spacing: Theme.Spacing.tiny) {
                        Text(name)
                            .font(Theme.Fonts.poppins_bold_16)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        Text(speciality)
                            .font(Theme.Fonts.poppins_12)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image("arrow-right")
                        .foregroundColor(.white)
                }
                .padding(Theme.Padding.none)
                .frame(maxWidth: .infinity, alignment: .center)
                Divider().background(.white)
                HStack (alignment: .top, spacing: Theme.Spacing.huge) {
                    HStack (spacing: Theme.Spacing.tiny) {
                        Image("calendar-blue")
                            .resizable()
                            .frame(width: Theme.Values.imgSize16,
                                   height: Theme.Values.imgSize16)
                        Text(date)
                            .font(Theme.Fonts.poppins_12)
                    }
                    HStack (spacing: Theme.Spacing.tiny) {
                        Image("clock")
                            .resizable()
                            .frame(width: Theme.Values.imgSize16,
                                   height: Theme.Values.imgSize16)
                        Text(time)
                            .font(Theme.Fonts.poppins_12)
                    }
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(Theme.Values.doctorCardPadding)
            .frame(maxWidth: .infinity)
            .background(Theme.Colors.blueCard)
            .cornerRadius(Theme.Values.imgCornerRadius)
        }
    }


#Preview {
    ContentView()
}
