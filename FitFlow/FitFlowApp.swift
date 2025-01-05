//
//  FitFlowApp.swift
//  FitFlow
//
//  Created by Digvijay Ingole on 1/5/25.
//

import SwiftUI

@main
struct FitFlowApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
