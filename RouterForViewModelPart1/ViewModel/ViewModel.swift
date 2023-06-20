//
//  ViewModel.swift
//  RouterForViewModelPart1
//
//  Created by Michelle Grover on 6/20/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    private var router: Router

    init(router: Router) {
        self.router = router
    }

    func viewDashboard() {
        router.navigateToDashboard()
    }
    func updateProfile() {
        router.navigateToUpdateProfile()
    }
}
