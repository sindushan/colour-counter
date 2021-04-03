//
//  CounterFourApp.swift
//  CounterFour
//
//  Created by Sindushan Shanmugam on 2021-03-14.
//

import SwiftUI

@main
struct CounterFourApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
