//
//  RouterForViewModelPart1App.swift
//  RouterForViewModelPart1
//
//  Created by Michelle Grover on 6/18/23.
//

import SwiftUI

@main
struct RouterForViewModelPart1App: App {
    @StateObject var router = Router()
    var body: some Scene {
        WindowGroup {
            ContentView(router: router)
        }
    }
}
