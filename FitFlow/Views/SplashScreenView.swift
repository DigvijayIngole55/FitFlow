//
//  SplashScreenView.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/5/25.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Binding var isPresented: Bool
    @State var displayText = ""
    let appName = "FitFlow"
    let typingSpeed: Double = 0.2
    
    var body: some View {
        ZStack {
            Color(red: 14/255, green: 14/255, blue: 14/255).edgesIgnoringSafeArea(.all)
            VStack {
                Image("FITFLOW-NOBG").resizable().frame(width: 200,height: 200)
                Text(displayText).foregroundStyle(Color.white).font(.custom("Poppins-Regular", size: 36)).padding(.top, 16).onAppear {
                    startTypingAnimation()
                }
            }
        }
    }
    
    func startTypingAnimation() {
        for (index, character) in appName.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + typingSpeed * Double(index)) {
                displayText.append(character)
                if index == appName.count - 1 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                            withAnimation {
                                                isPresented = false
                                            }
                                        }
                 }
            }
            
        }
        
    }
}

#Preview {
    SplashScreenView(isPresented: .constant(true))
}
