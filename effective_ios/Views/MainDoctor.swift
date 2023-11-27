//
//  DoctorCard.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct MainDoctor: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack (alignment: .center, spacing: 6) {
                Image("doctor1")
                    .padding(20)
                    .frame(width: 327, alignment: .top)
                    .background(Theme.Colors.blueCard)
                    .cornerRadius(12)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Dr. Imran Syahir").font(Theme.Fonts.poppins_16)
                        .foregroundColor(Theme.Colors.blackHeaderText)
                    Text("General Doctor")
                }
                .padding(0)
            }
        }
        .padding(20)
        .frame(width: 327, alignment: .top)
        .background(Color(red: 0.28, green: 0.58, blue: 1))
        .cornerRadius(12)
        
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainDoctor()
    }
}
