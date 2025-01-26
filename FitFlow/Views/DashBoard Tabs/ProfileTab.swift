//
//  ProfileTab.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        ZStack{
            Color(red: 14/255, green: 14/255, blue: 14/255).ignoresSafeArea(.all)
            ScrollView{
                VStack{
                    HeaderView(
                        date: "Friday, 19 Jul",
                        title: "Profile",
                        avatar: Image("")
                    )
                    CircleAvatar(image: Image("Avatar"), size: 120).padding()
                    
                    Text("Digvijay Ingole").foregroundColor(.white).fontWeight(.bold).font(.custom("Poppins-Regular", size: 28))
                        .padding()
                    Text("digvijaystudent123@gmail.com").foregroundColor(.white).font(.custom("Poppins-Regular", size: 16)).accentColor(.white).padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    
                    HStack (spacing: 50){
                        ProfileStatTab(
                            iconName: "figure.walk",
                            iconColor: Color(red: 0.75, green: 1.0, blue: 0.0),
                            stat: "3,432",
                            statName: "Walked"
                        )
                        ProfileStatTab(
                            iconName: "flame.fill",
                            iconColor: Color.orange,
                            stat: "500 cal",
                            statName: "Burned"
                        )
                        ProfileStatTab(
                            iconName: "clock.fill",
                            iconColor: Color(red: 100/255, green: 149/255, blue: 237/255),
                            stat: "2h 30m",
                            statName: "Total Time"
                        )
                    }
                    SettingsView()
                    VStack(spacing: 16) {
                        
                        HStack {
                            Text("Privacy Policy")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    
                                }
                            
                            Text("•")
                                .foregroundColor(.gray)
                            
                            Text("Terms & Conditions")
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    
                                }
                        }
                    }.font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(.gray)
                        .padding()
                    Button(action: {
                        
                    }) {
                        Text("Log Out")
                            .font(.custom("Poppins-Regular", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                    
                    Text("Version 1.0.0")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(.gray)
                
                .padding(.top, 30)
                }.padding()
                
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }

        }
    }
}

struct SettingsOption: View {
    var iconName: String
    var label: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(Color.white)
            
            Text(label)
                .foregroundColor(Color.white)
                .fontWeight(.medium)
                .font(.system(size: 16))
                .padding(.leading, 8)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(Color.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 16) {
            SettingsOption(iconName: "person", label: "Personal")
                            SettingsOption(iconName: "slider.horizontal.3", label: "General")
                            SettingsOption(iconName: "bell", label: "Notification")
                            SettingsOption(iconName: "questionmark.circle", label: "Help")
                            SettingsOption(iconName: "lock.fill", label: "Security")
                            SettingsOption(iconName: "globe", label: "Language")
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(20)
    }
}

#Preview {
    ProfileTab()
}


