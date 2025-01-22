//
//  WorkoutCard.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct WorkoutCard: View {
    
    let id: String
    let imageName: String
    let title: String
    let duration: String
    let level: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .cornerRadius(16)
               
            LinearGradient(
                        colors: [Color.black.opacity(0.7), Color.clear],
                            startPoint: .bottom,
                            endPoint: .top
                        ).cornerRadius(16)
            VStack(alignment: .leading, spacing: 4) {
                           Text(title)
                               .font(.system(size: 16, weight: .semibold))
                               .foregroundColor(.white)
                               .multilineTextAlignment(.leading)
                               .lineLimit(2)
                           
                           Text("\(duration) \(level)")
                               .font(.system(size: 14))
                               .foregroundColor(.gray)
                       }
                       .padding()
            
        }
    }
}


