//
//  MiniCalorieTracker.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct MiniCalorieTracker: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(red: 26/255, green: 26/255, blue: 26/255))
                .shadow(radius: 5)
            
            VStack(alignment: .leading){
                HStack(spacing: 8){
                    Image(systemName: "flame.fill")
                        .resizable()
                        .frame(width: 16,height: 16)
                        .foregroundColor(.orange)
                    Text("Calories").font(.system(size: 14, weight: .medium)).foregroundColor(.white)
                    Spacer()
                }.padding(.all)
                HStack{
                    VStack(alignment: .leading){
                        HStack(alignment: .bottom) {
                            Text("124").font(.system(size: 16, weight: .medium)).foregroundColor(.white)
                            Text("Kcal").font(.system(size: 12, weight: .medium)).foregroundColor(.gray)
                        }
                        
                    }.padding(.all)
                    Spacer()
                    ZStack{
                        Circle()
                            .stroke(Color.gray.opacity(0.5), lineWidth: 5)
                            .frame(width: 30, height: 30)
                        Circle()
                            .trim(from: 0, to: 0.6)
                            .stroke(Color.orange, lineWidth: 5)
                            .frame(width: 30, height: 30)
                            .rotationEffect(.degrees(-90))
                        
                    }.padding(.all)
                    
                }
                
            }
        }.frame(height: 100)
    }
}


