//
//  WorkoutGridView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct WorkoutGridView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                ForEach(workouts) { workout in
                    WorkoutCard(
                        id: workout.id,
                        imageName: workout.imageName,
                        title: workout.title,
                        duration: workout.duration,
                        level: workout.level
                    )
                }
            }
           
        }
        .background(Color(red: 14/255, green: 14/255, blue: 14/255).ignoresSafeArea())
    }
}


