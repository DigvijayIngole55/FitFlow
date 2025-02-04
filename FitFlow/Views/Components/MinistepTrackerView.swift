//
//  MinistepTrackerView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct MinistepTrackerView: View {
    
    @Binding var stepCount: Int
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(red: 26/255, green: 26/255, blue: 26/255))
                .shadow(radius: 5)
            
            VStack(alignment: .leading){
                HStack{
                    HStack(spacing: 8){
                        Image(systemName: "figure.walk")
                            .resizable()
                            .frame(width: 16,height: 16)
                            .foregroundColor(Color(red: 0.75, green: 1.0, blue: 0.0))
                        Text("Steps").font(.system(size: 14, weight: .medium)).foregroundColor(.white)
                                            }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                }
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("\(stepCount) steps")
                            .foregroundColor(Color(red: 0.75, green: 1.0, blue: 0.0))
                            .font(.system(size: 20, weight: .bold))
                        Text("2.51 km | 123.55 kcal")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                    Spacer()
                    HStack(alignment: .bottom, spacing: 8) {
                        ForEach(0..<7) { index in
                            VStack() {
                                RoundedRectangle(cornerRadius: 2)
                                    .fill(index == 4 ? Color(red: 0.75, green: 1.0, blue: 0.0) : Color.gray.opacity(0.5))
                                    .frame(width: 8, height: CGFloat([30, 40, 25, 35, 50, 20, 15][index]))
                                    Text(["M", "T", "W", "T", "F", "S", "S"][index])
                                    .font(.system(size: 10))
                                    .foregroundColor(.gray)
                                    }
                                        }
                    }
                }
               
            }.padding(.all)
        }.frame(height: 120)
    }
}

