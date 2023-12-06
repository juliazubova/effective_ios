//
//  Theme.swift
//  effective_ios
//
//  Created by Effective Devices on 27.11.2023.
//

import SwiftUI

struct Theme {
    struct Colors {
            static let greyHeaderText = Color(red: 0.53, green: 0.59, blue: 0.73)
            static let blackHeaderText = Color(red: 0.05, green: 0.11, blue: 0.2)
            static let blueCard = Color(red: 0.28, green: 0.58, blue: 1)
            static let whiteSearchBox = Color(red: 0.98, green: 0.98, blue: 0.98)
            static let lightGreySearchBox = Color(red: 0.98, green: 0.98, blue: 0.98)
            static let orange = Color(red: 1, green: 0.69, blue: 0.32)
            static let shadow = Color(red: 0.35, green: 0.46, blue: 0.65)
            static let navElement = Color(red: 0.39, green: 0.71, blue: 1)
            static let navElementBg = Color(red: 0.39, green: 0.79, blue: 1)
        }
        
        struct Fonts {
            static let poppins_16 = Font.custom("Poppins-Medium", size: 16)
            static let poppins_12 = Font.custom("Poppins-Medium", size: 12)
            static let poppins_14 = Font.custom("Poppins-Medium", size: 14)
            static let poppins_15 = Font.custom("Poppins-Medium", size: 15)
            static let poppins_bold_16 = Font.custom("Poppins-Bold", size: 16)
            static let poppins_bold_20 = Font.custom("Poppins-Bold", size: 20)
            static let poppins_semibold_16 = Font.custom("Poppins-Bold", size: 16)
        }
        
        struct Values {
            static let imgAvatarSize : CGFloat = 56
            static let imgDoctorSize : CGFloat = 48
            static let imgSize16 : CGFloat = 16
            static let imgSize24 : CGFloat = 24
            static let rectangleSize : CGFloat = 72
            
            static let navigationPadding : CGFloat = Padding.short
            static let contentViewPadding : CGFloat = Padding.huge
            static let doctorCardPadding : CGFloat = Padding.large
            static let searchFieldPadding : CGFloat = Padding.medium
            
            static let shadowRadius : CGFloat = 10
            static let imgCornerRadius : CGFloat = 12
            static let cornerRadius100 : CGFloat = 100
        }
        
        struct Padding {
            static let none : CGFloat = 0
            static let short : CGFloat = 12
            static let medium : CGFloat = 16
            static let large : CGFloat = 20
            static let huge: CGFloat = 24
        }
        
        struct Spacing {
            static let tiny : CGFloat = 8
            static let small : CGFloat = 12
            static let cat: CGFloat = 13
            static let short : CGFloat = 16
            static let medium : CGFloat = 20
            static let large : CGFloat = 24
            static let huge : CGFloat = 32
        }
}

