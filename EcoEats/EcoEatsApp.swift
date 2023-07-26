//
//  EcoEatsApp.swift
//  EcoEats
//
//  Created by Prithika Venkatesh on 26/7/2023.
//

import SwiftUI

@main
struct EcoEatsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
