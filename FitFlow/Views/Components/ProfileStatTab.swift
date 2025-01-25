//
//  ProfileStatTab.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/24/25.
//
import SwiftUI

struct ProfileStatTab: View {
    var iconName: String
    var iconColor: Color
    var stat: String
    var statName: String

    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 50, height: 50)
                Image(systemName: iconName)
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(iconColor)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            
            Text(stat)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.custom("Poppins-Regular", size: 16))
            
            Text(statName)
                .foregroundColor(.white.opacity(0.5))
                .fontWeight(.bold)
                .font(.custom("Poppins-Regular", size: 12))
        }
    }
}
