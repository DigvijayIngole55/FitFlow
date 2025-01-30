//
//  HealthKitService.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/29/25.
//
import HealthKit

class HealthKitService {
    private let healthStore = HKHealthStore()
    
    private let readPermissions: Set<HKObjectType> = [
            HKObjectType.quantityType(forIdentifier: .stepCount)!,
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.categoryType(forIdentifier: .mindfulSession)!
        ]

        private let writePermissions: Set<HKSampleType> = [
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.categoryType(forIdentifier: .mindfulSession)!
        ]
    
    func ishealthkitAuthrorized() -> Bool {
        for type in readPermissions {
            if healthStore.authorizationStatus(for: type) != .sharingAuthorized {
                return false
            }
        }

        for type in writePermissions {
            if healthStore.authorizationStatus(for: type) != .sharingAuthorized {
                return false
            }
        }

        return true
    }
    
    func requestHealthKitAuthorization(completion: @escaping (Bool, Error?) -> Void) {
        healthStore.requestAuthorization(toShare: writePermissions, read: readPermissions) { success, error in
            completion(success, error)
        }
    }

}
