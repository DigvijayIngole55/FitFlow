//
//  MiniDurationTracker.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct MiniDurationTracker: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(red: 26/255, green: 26/255, blue: 26/255))
                .shadow(radius: 5)
            VStack(alignment: .leading){
                HStack(spacing: 8){
                    Image(systemName: "clock.fill")
                        .resizable()
                        .frame(width: 16,height: 16)
                        .foregroundColor(Color(red: 100/255, green: 149/255, blue: 237/255))
                    Text("Duration").font(.system(size: 14, weight: .medium)).foregroundColor(.white)
                    Spacer()
                }.padding(.all)
                HStack{
                    VStack(alignment: .leading){
                        HStack(alignment: .bottom) {
                            Text("124").font(.system(size: 16, weight: .medium)).foregroundColor(.white)
                            Text("Mins").font(.system(size: 12, weight: .medium)).foregroundColor(.gray)
                        }
                        
                    }.padding(.all)
                    Spacer()
                    ZStack{
                        Circle()
                            .stroke(Color.gray.opacity(0.5), lineWidth: 5)
                            .frame(width: 30, height: 30)
                        Circle()
                            .trim(from: 0, to: 0.9)
                            .stroke(Color(red: 100/255, green: 149/255, blue: 237/255), lineWidth: 5)
                            .frame(width: 30, height: 30)
                            .rotationEffect(.degrees(-90))
                        
                    }.padding(.all)
                    
                }
                
            }
        }.frame(height: 100)
    }
}

