//
//  DashBoardView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct DashBoardView: View {
    
   
    var body: some View {
        TabView {
                    DashBoardTab()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Dashboard")
                        }
                    
                    WorkoutsTab()
                        .tabItem {
                            Image(systemName: "figure.walk")
                            Text("Workouts")
                        }
                    
                    MeditationTab()
                        .tabItem {
                            Image(systemName: "leaf.fill")
                            Text("Meditation")
                        }
                    
                    ProfileTab()
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                }
        
        .accentColor(Color(red: 0.75, green: 1.0, blue: 0.0))
        .onAppear{configureTabBarAppearance()}
    }
    func configureTabBarAppearance() {
            let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(red: 14/255, green: 14/255, blue: 14/255, alpha: 0.8)
            let offset = UIOffset(horizontal: 0, vertical: 5)
            appearance.stackedLayoutAppearance.normal.titlePositionAdjustment = offset
            appearance.stackedLayoutAppearance.selected.titlePositionAdjustment = offset
        
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
}

#Preview {
    DashBoardView()
}
