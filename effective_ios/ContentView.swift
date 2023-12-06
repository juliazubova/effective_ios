//
//  ContentView.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack (spacing: Theme.Spacing.huge) {
                    GreetingHeader()
                    VStack (spacing: Theme.Spacing.large) {
                        VStack (spacing: Theme.Spacing.medium) {
                            MainDoctor(
                                name: "Dr. Imran Syahir",
                                speciality: "General Doctor",
                                date: "Sunday, 12 June",
                                time: "11:00 - 12:00 AM"
                            )
                            SearchBox()
                        }
                        HStack (alignment: .top,
                                spacing: Theme.Spacing.cat) {
                            Category(
                                text: "Covid 19",
                                icon: "sun"
                            )
                            Category(
                                text: "Doctor",
                                icon: "profile-add"
                            )
                            Category(
                                text: "Medicine",
                                icon: "link"
                            )
                            Category(
                                text: "Hospital",
                                icon: "hospital"
                            )
                        }
                    }
                    VStack (alignment: .leading,
                            spacing: Theme.Spacing.short) {
                        Text("Near Doctor")
                            .font(Theme.Fonts.poppins_bold_16)
                        VStack (alignment: .leading,
                                spacing: Theme.Spacing.small) {
                            NearDoctor(
                                photo: "doctor2",
                                name: "Dr. Joseph Brostito",
                                speciality: "Dental Specialist",
                                rating: "4,8 (120 Reviews)",
                                distance: "1.2 KM",
                                time: "17.00"
                            )
                            NearDoctor(
                                photo: "doctor1",
                                name: "Dr. Imran Syahir",
                                speciality: "General Doctor",
                                rating: "4,8 (120 Reviews)",
                                distance: "1.2 KM",
                                time: "17.00"
                            )
                        }
                    }
                }
                .padding(Theme.Values.contentViewPadding)
            }
            Navigation(selected: "Home")
        }
    }
}

#Preview {
    ContentView()
}
