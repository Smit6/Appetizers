//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Smitkumar Contractor on 11/8/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
