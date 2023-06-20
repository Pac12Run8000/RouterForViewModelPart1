//
//  ContentView.swift
//  RouterForViewModelPart1
//
//  Created by Michelle Grover on 6/18/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var router = Router()
    @StateObject var viewModel: ViewModel

    init(router: Router) {
        _router = StateObject(wrappedValue: router)
        _viewModel = StateObject(wrappedValue: ViewModel(router: router))
    }

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: UpdateProfileView(), isActive: $router.navigateToDetailScreen) {
                    EmptyView()
                }
                NavigationLink(destination: DashboardView(), isActive: $router.navigateToDashboardScreen) {
                    EmptyView()
                }
                Button {
                    viewModel.updateProfile()
                } label: {
                    Text("Update profile")
                }
                Button {
                    viewModel.viewDashboard()
                } label: {
                    Text("View Dashboard")
                }
            }
            .navigationTitle("Main Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(router: Router())
    }
}
