//
//  HealthKitService.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/29/25.
//
import HealthKit

class HealthKitService {
    private let healthStore = HKHealthStore()
    private let stepCountType = HKQuantityType.quantityType(forIdentifier: .stepCount)!
    
    private let readPermissions: Set<HKObjectType> = [
            HKObjectType.quantityType(forIdentifier: .stepCount)!,
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.categoryType(forIdentifier: .mindfulSession)!
        ]

        private let writePermissions: Set<HKSampleType> = [
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.categoryType(forIdentifier: .mindfulSession)!
        ]
    
    func isHealthkitAuthrorized(completion: @escaping(Bool) -> Void) {
        DispatchQueue.global().async {
            for type in self.readPermissions {
                if self.healthStore.authorizationStatus(for: type) != .sharingAuthorized {
                    DispatchQueue.main.async {
                        completion(false)
                    }
                    return
                }
            }
            for type in self.writePermissions {
                if self.healthStore.authorizationStatus(for: type) != .sharingAuthorized {
                    DispatchQueue.main.async {
                        completion(false)
                    }
                    return
                }
            }
            DispatchQueue.main.async {
                completion(true)
            }
        }
    }
    
    func requestHealthKitAuthorization(completion: @escaping (Bool, Error?) -> Void) {
        healthStore.requestAuthorization(toShare: writePermissions, read: readPermissions) { success, error in
            completion(success, error)
        }
    }
    
    func fetchStepCount(predicte: NSPredicate,completion: @escaping(Int)-> Void){
        let query = HKStatisticsQuery(quantityType: stepCountType, quantitySamplePredicate: predicte, options: .cumulativeSum) { _, result, error in
            DispatchQueue.main.async {
                guard let result = result, let sum = result.sumQuantity() else {
                    
                    print("Error fetching step count: \(error?.localizedDescription ?? "Unknown error")")
                    completion(0)
                    return
                }
                return completion(Int(sum.doubleValue(for: HKUnit.count()))
                )
            }
        }
        healthStore.execute(query)
    }
    

}
