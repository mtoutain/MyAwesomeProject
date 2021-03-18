//
//  MyAwesomeProjectApp.swift
//  MyAwesomeProject
//
//  Created by Michel Toutain on 2021-03-18.
//

import SwiftUI

@main
struct MyAwesomeProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
