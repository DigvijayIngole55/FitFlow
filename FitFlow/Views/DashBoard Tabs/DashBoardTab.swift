//
//  DashBoardTab.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/6/25.
//

import SwiftUI

struct DashBoardTab: View {
    @StateObject private var dashBoardController = DashboardController()

    let today = Date()
    var body: some View {
        ZStack{
            Color(red: 14/255, green: 14/255, blue: 14/255).ignoresSafeArea(.all)
            ScrollView{
                VStack(alignment:.leading){
                    HeaderView(
                        date: "Friday, 19 Jul",
                        title: "Dashboard",
                        avatar: Image("Avatar")
                    )
                    CalenderView()
                    Text("Recent Activity").foregroundColor(.white).fontWeight(.bold).font(.custom("Poppins-Regular", size: 24)).padding(.top,20)
                    MinistepTrackerView(stepCount: $dashBoardController.stepCount)
                    HStack{
                        MiniCalorieTracker()
                        Spacer()
                            .frame(width: 20)
                        MiniDurationTracker()
                    }.padding(.top,10)
                    Text("Trending Workouts").foregroundColor(.white).fontWeight(.bold).font(.custom("Poppins-Regular", size: 24)).padding(.top,20)
                    WorkoutGridView()
                }
            }.padding(.all)
            
        }.onAppear(
            perform: {
                dashBoardController.fetchTodaysStepCount()
            }
        )
    }
}

#Preview {
    DashBoardTab()
}
