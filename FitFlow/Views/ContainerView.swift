//
//  ContainerView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/5/25.
//

import SwiftUI

struct ContainerView: View {
    
    @State var isSplashScreenVisible = true
    @State var showOnBoardingScreen = false
    
    
    var body: some View {
        ZStack {
                    if isSplashScreenVisible {
                        SplashScreenView(isPresented: $isSplashScreenVisible)
                    } else if showOnBoardingScreen {
                        onBoardingView(isOnboardingComplete: $showOnBoardingScreen)
                    } else {
                        DashBoardView()
                    }
                }
        .onAppear {
                   checkOnboardingStatus()
               }
            }
    func checkOnboardingStatus() {
        let hasSeenOboarding = UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
        if !hasSeenOboarding {
            showOnBoardingScreen = true
        }
    }
}



#Preview {
    ContainerView()
}
