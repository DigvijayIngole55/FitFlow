//
//  DashboardController.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/26/25.
//
import Combine
import HealthKit

class DashboardController: ObservableObject{
    
    private let healthKit = HealthKitService()
    

    
    @Published var stepCount: Int = 0
    
    func fetchTodaysStepCount()  {
        healthKit.isHealthkitAuthrorized { [weak self] authorized in
            guard let self = self else {
                return
            }
            let startOfDay = Calendar.current.startOfDay(for: Date())
            let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: Date(), options: .strictStartDate)
            if authorized{
                self.healthKit.fetchStepCount(predicte: predicate){stepCount in
                    DispatchQueue.main.async {
                        
                        self.stepCount = stepCount
                    }
                }
                

            }else {
                    self.healthKit.requestHealthKitAuthorization { success, error in
                        guard success else{
                            return
                        }

                        self.healthKit.fetchStepCount(predicte: predicate){stepCount in
                            DispatchQueue.main.async {
                                self.stepCount = stepCount
                            }
                        }
                        
                    }
                }
                
            }
        }

}



