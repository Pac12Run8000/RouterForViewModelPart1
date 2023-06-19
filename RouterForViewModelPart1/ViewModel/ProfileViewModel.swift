//
//  ProfileViewModel.swift
//  RouterForViewModelPart1
//
//  Created by Michelle Grover on 6/18/23.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    private var router: Router

    init(router: Router) {
        self.router = router
    }

    func updateProfile() {
        router.navigateToUpdateProfile()
    }
}
