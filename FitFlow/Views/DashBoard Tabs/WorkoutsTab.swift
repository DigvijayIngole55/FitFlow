//
//  WorkoutsTab.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct WorkoutsTab: View {
    var body: some View {
        ZStack (alignment: .top){
            Color(red: 14/255, green: 14/255, blue: 14/255).ignoresSafeArea(.all)
            Image("WorkoutTabImage")
                .resizable()
                .scaledToFit()
                .overlay(
                    Color.black.opacity(0.5)
                ).ignoresSafeArea(.all)
            
            VStack{
            
                    HeaderView(
                        date: "Friday, 19 Jul",
                        title: "Workouts",
                        avatar: Image("Avatar")
                    ).padding(EdgeInsets(top: 16, leading: 16, bottom: 250, trailing: 16))
                    
                    
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ExpandableSearchView()
                                    ChipView(label: "Cardio")
                                    ChipView(label: "Strength")
                                    ChipView(label: "Yoga")
                                    ChipView(label: "Aerobic")
                                    ChipView(label: "Flexibility")
                                    ChipView(label: "Crossfit")
                                    ChipView(label: "Pilates")
                                }
                                .padding(.horizontal)
                            }
                
            }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
    }
}


#Preview {
    WorkoutsTab()
}
