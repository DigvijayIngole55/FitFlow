//
//  onBoardingView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/5/25.
//

import SwiftUI

struct onBoardingView: View {
    @Binding var isOnboardingComplete: Bool
    @State var currentPage: Int = 0
    var body: some View {
        
        ZStack {
            Color(red: 14/255, green: 14/255, blue: 14/255).edgesIgnoringSafeArea(.all)
            VStack {
                HStack{
                    Text("Fitflow")
                            .font(.custom("Poppins-Regular", size: 24))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                    Spacer()
                    Button(action: {
                        print("Skip button clicked")

                        completeOnboarding()
                    }) {
                        Text("Skip")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                TabView {
                    OnboardingPageView(
                        imageName: "fit1",
                        title: "Track Your Fitness Journey",
                        description: "Monitor your steps, calories burned, and workouts to stay on top of your goals."
                    )
                    OnboardingPageView(
                        imageName: "fit2",
                        title: "Seamless Data Syncing",
                        description: "Sync your fitness progress effortlessly across all your devices using iCloud."
                    )
                    
                    OnboardingPageView(
                        imageName: "fit3",
                        title: "Relax with Guided Meditation",
                        description: "Unwind with sessions designed to help you focus, de-stress, and recharge."
                    )
                    OnboardingPageView(
                        imageName: "fit4",
                        title: "Achieve Your Goals",
                        description: "Set fitness goals, earn achievements, and stay motivated on your journey."
                    )
                }
                .tabViewStyle(PageTabViewStyle())
            }
           
        }
       }
    func completeOnboarding() {
        print("yo")
            UserDefaults.standard.set(true, forKey: "hasSeenOnboarding")
            isOnboardingComplete = false 
        }
}

struct OnboardingPageView: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack() {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .padding()
            Spacer()
            Text(title)
                    .font(.custom("Poppins-Regular", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
            Spacer()
                
                Text(description)
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color(white: 0.8))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
            
            Spacer()
        }
        .padding()
    }
}


#Preview {
    onBoardingView(isOnboardingComplete: .constant(false))
}
