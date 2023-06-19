//
//  Router.swift
//  RouterForViewModelPart1
//
//  Created by Michelle Grover on 6/18/23.
//

import SwiftUI

class Router: ObservableObject {
    @Published var navigateToDetailScreen = false
    @Published var navigateToDashboardScreen = false

    func navigateToUpdateProfile() {
        navigateToDetailScreen = true
    }

    func navigateToDashboard() {
        navigateToDashboardScreen = true
    }
}
