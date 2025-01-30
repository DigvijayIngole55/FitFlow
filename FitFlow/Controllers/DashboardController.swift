//
//  DashboardController.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/26/25.
//
import Combine
import HealthKit

class DashboardController: ObservableObject{
    
    private let healthStore = HKHealthStore()
    @Published var stepCount: Int = 0
    
    func fetchTodaysStepCount()  {
        
//        try {
////            HKhea
//        }
//        catch(error){
//            
//        }
    }
    
    
    
    
}
